package com.example.demo.service.impl;

import java.util.Date;
import java.util.HashSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Permission;
import com.example.demo.model.Role;
import com.example.demo.model.User;
import com.example.demo.repository.RoleRepository;
import com.example.demo.repository.UserRoleRepository;
import com.example.demo.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRoleRepository userRoleRepository; 
		
	@Override
	public List<Role> findAll() {
		return (List<Role>)roleRepository.findAll();
	}
	
	@Override
	public Role findById(Long RoleId) {

		return roleRepository.findById(RoleId).get();
	}
	
	@Override
	public Role findByName(String rolename) {
		return roleRepository.findByName(rolename);
	}
	
	@Override
	public Role save(Role role) {
		//role.setDateCreation(new Date());
		return roleRepository.save(role);
	}
	
	@Override
	public Role update(Long RoleId, Role roleDetails) {
		Role role = this.findById(RoleId);
		Role roleUpdate = null;
		if(role!=null) {
			role.setName(roleDetails.getName());
			role.setDescription(roleDetails.getDescription());
			role.setPermissions(roleDetails.getPermissions());
			roleUpdate = role;
			roleRepository.save(roleUpdate);
		}
		return roleUpdate;
	}
	
	@Override
	@Transactional
	public boolean deleteById(Role role) {
		boolean status = false;
		try {
			//before delete association permissions and UserRole
			role.setPermissions(new HashSet<Permission>());
			Role roleUpdate = roleRepository.save(role);
			userRoleRepository.deleteByRoleId(roleUpdate.getId());
			//delete role
			roleRepository.deleteById(roleUpdate.getId());
			
			status = true;
		} catch (Exception e) {
			e.getStackTrace();
		}
		return status;
	}
}
