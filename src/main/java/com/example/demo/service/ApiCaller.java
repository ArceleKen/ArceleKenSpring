package com.example.demo.service;

import java.util.Map;

public interface ApiCaller {

	Map<String, Object> call(String url, Map<String, Object> params);
}
