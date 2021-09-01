package com.example.demo.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Log;
import com.example.demo.model.PojoSearch;
import com.example.demo.model.QLog;
import com.example.demo.querydsl.LogPredicates;
import com.example.demo.repository.LogRepository;
import com.example.demo.service.LogService;
import com.example.demo.util.StaticVarFunction;
import com.google.common.collect.Lists;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;

@Service
public class LogServiceImpl implements LogService{
	
	@Autowired
	private LogRepository logRepository;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Log save(Log log) {
		//log.setCreatedAt(new Date());
		return logRepository.save(log);
	}
	
	@Override
	public List<Log> search(PojoSearch search){
		System.out.println("##### Search log: "+search.toString());
		QLog log = QLog.log;
				
		BooleanExpression expression = log.id.isNotNull();
        if(search.getDatefrom() != null){
            Date from = StaticVarFunction.toDate(search.getDatefrom());
            if(from != null)
                expression = (expression == null ? log.createdAt.after(from) : expression.and(log.createdAt.after(from)));
        }

        if(search.getDateto() != null){
            Date to = StaticVarFunction.toDate(search.getDateto());
            if(to != null)
                expression = (expression == null ? log.createdAt.before(to) : expression.and(log.createdAt.before(to)));
        }
        
        if(search.getUser_id()!= null)
            expression = (expression == null ? log.user.id.eq(search.getUser_id()): expression.and(log.user.id.eq(search.getUser_id())));

        System.out.println("##### Predicate Search log OK: "+expression);
		
        return Lists.newArrayList(logRepository.findAll(expression, log.createdAt.desc()));
        
        /*//On peut utiliser EntityManager et customiser comme suit
        JPAQuery<Log> query = new JPAQuery(entityManager);
		List<Log> logs = query.select(log.createdAt, log.resource, log.otherInfo)
						        .from(log)
						        .where(expression)
						        .fetch() //c.get(cat.id), c.get(cat.name)
						        .stream()
						        .map(c -> new Log(c.get(log.resource), null, c.get(log.otherInfo), null))
						        .collect(Collectors.toList());				       
		return logs;*/
		       
	}

}
