package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Log;

public interface LogRepository extends JpaRepository<Log, Long>, QuerydslPredicateExecutor<Log>  {
	

}
