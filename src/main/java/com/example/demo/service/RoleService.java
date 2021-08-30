package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Role;

public interface RoleService {
	List<Role> findAll();
	Role findById(Long RoleId);
	Role findByName(String rolename);
	Role save(Role role);
	Role update(Long RoleId, Role roleDetails);
	boolean deleteById(Role role);

}
