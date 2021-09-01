package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Role;
import com.example.demo.model.User;
import com.example.demo.model.UserRole;
import com.example.demo.repository.RoleRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.repository.UserRoleRepository;
import com.example.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRoleRepository userRoleRepository;
	
	@Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public List<User> findAll(){
		return (List<User>)userRepository.findAll();
	}
	
	@Override
	public User findById(Long UserId) {
		return userRepository.findById(UserId).get();
	}
	
	@Override
	public User save(User user) {
		//user.setDateCreation(new Date());
		//System.out.println("### pass user: "+user.getPassword());
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		return userRepository.save(user);
	}
	
	@Override
	public User saveWithoutContrain(User user) {
		return userRepository.save(user);
	}
	
	@Override
	@Transactional
	public User update(List<Long> rolesId, User userDetails) {
		User userFound = this.findById(userDetails.getId());
		
		if(userFound==null) {
			return null;
		}
		
		userFound.setEnabled(userDetails.isEnabled());
		userFound.setUsername(userDetails.getUsername());
		System.out.println("### Ex pass user before update: "+userFound.getPassword());
		System.out.println("### pass user before update: "+userDetails.getPassword());
		if(userDetails.getPassword()!=null && userDetails.getPassword()!="") 
			userFound.setPassword(userDetails.getPassword());
		userFound.setName(userDetails.getName());
		//userFound.setUserRoles(userDetails.getUserRoles());
		User userupdate = userRepository.save(userFound);
		System.out.println("### pwd after update : "+userupdate.getPassword());
		
		if(rolesId!=null && userupdate!=null) {
			userRoleRepository.deleteUserId(userupdate.getId());
	        //Set<UserRole> userRoles = new HashSet<>();
	        for (Long roleId : rolesId) {
	            Role role = roleRepository.findById(roleId).get();
	            if(role == null){
	                continue;
	            	/*ra.addFlashAttribute("error", "roles inexistants");
	                return "redirect:/create-user";*/
	            }
	            UserRole userRole = new UserRole();
	            userRole.setUser(userupdate);
	            userRole.setRole(role);
	            userRoleRepository.save(userRole);
	            //userRoles.add(role);
	        }
	        //user.setRoles(roles);
        }
		System.out.println("### pwd after update role : "+userupdate.getPassword());
		
		return userupdate;
	}
	
	@Override
	public User getUserByUsername(String username) {
		return userRepository.getUserByUsername(username);
	}

}
