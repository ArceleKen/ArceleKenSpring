package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Permission;
import com.example.demo.model.Role;

public interface PermissionService {
	List<Permission> findAll();
	Permission findById(Long permissionId);

}
