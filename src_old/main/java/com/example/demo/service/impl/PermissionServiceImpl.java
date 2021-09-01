package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Permission;
import com.example.demo.model.Role;
import com.example.demo.repository.PermissionRepository;
import com.example.demo.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionRepository permissionRepository;
		
	@Override
	public List<Permission> findAll() {
		return (List<Permission>)permissionRepository.findAll();
	}
	
	@Override
	public Permission findById(Long permissionId) {

		return permissionRepository.findById(permissionId).get();
	}
	
}
