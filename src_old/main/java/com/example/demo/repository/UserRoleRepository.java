package com.example.demo.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.UserRole;

public interface UserRoleRepository extends CrudRepository<UserRole, Long> {
	
	@Modifying
	@Query("delete from UserRole ur where ur.user.id=:userId")
	void deleteUserId(@Param("userId") Long userId);
	
	@Modifying
	@Query("delete from UserRole ur where ur.role.id=:roleId")
	void deleteByRoleId(@Param("roleId") Long roleId);
}
