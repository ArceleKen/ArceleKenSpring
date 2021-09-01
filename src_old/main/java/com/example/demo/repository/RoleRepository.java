package com.example.demo.repository;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Role;

public interface RoleRepository extends CrudRepository<Role, Long>  {
	
	Role findByName(String roleName);
	
//	@Modifying
//	@Query("delete from users_roles ur where ur.role_id=:roleId")
//	void deleteAsssociationUserRoleByRoleId(@Param("roleId") Long roleId);
}
