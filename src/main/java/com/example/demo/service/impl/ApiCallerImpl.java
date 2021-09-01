package com.example.demo.service.impl;

import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.example.demo.service.ApiCaller;
import com.example.demo.util.StaticVarFunction;

@Service
public class ApiCallerImpl implements ApiCaller {
	
	@Override
    public Map<String, Object> call(String url, Map<String, Object> params) {
        String uri = url;

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        //CsrfToken csrfToken = (CsrfToken) request.getAttribute("_csrf");
        Enumeration<String> requestHeaderNames = request.getHeaderNames();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        //headers.add(csrfToken.getHeaderName(), csrfToken.getToken());
        //headers.add("Cookie", "X-CSRF-TOKEN=" + csrfToken.getToken());
        while(requestHeaderNames.hasMoreElements()){
            String headerName = requestHeaderNames.nextElement();
            headers.add(headerName, request.getHeader(headerName));
        }

        HttpEntity<Map<String, Object>> httpEntity = new HttpEntity<>(params, headers);

        System.out.println("url: " + uri);
        System.out.println("headers: " + headers);
        System.out.println("params: " + params);
        //if(csrfToken != null) System.out.println("csrf token: " + csrfToken.toString());
        Map<String, Object> result = restTemplate.postForObject(uri, httpEntity, Map.class);

        System.out.println("result: " + result);

        return result;
    }
}
