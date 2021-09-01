package com.example.demo.repository;


import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Permission;;

public interface PermissionRepository extends CrudRepository<Permission, Long>  {
	
}
