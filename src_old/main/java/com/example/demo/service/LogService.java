package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Log;
import com.example.demo.model.PojoSearch;

public interface LogService {
	
	Log save(Log log);
	List<Log> search(PojoSearch search);
}
