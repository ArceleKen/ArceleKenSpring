package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Role;
import com.example.demo.model.User;
import com.example.demo.model.UserRole;
import com.example.demo.service.RoleService;
import com.example.demo.service.UserRoleService;
import com.example.demo.service.UserService;

@Controller
public class UserController extends UtilController {
	
	@Autowired
    private UserService userService;
	
	@Autowired
    private UserRoleService userRoleService;
	
	@Autowired
    private RoleService roleService;

	@Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
 
    @RequestMapping(value = {"/users"}, method = RequestMethod.GET)
    public String users(Model model) {
        List<User> list = userService.findAll();

        System.out.println("###### users found: " + list);
        this.saveLog("/users", "Lister les utilisateurs", "OK");
        model.addAttribute("listusers", list);
        
        return "users/index";
    }
    
    @RequestMapping(value = "/create-user", method = RequestMethod.GET)
    public String getCreateUser(Model model) {
 
        List<Role> roles = roleService.findAll();
 
        model.addAttribute("roles", roles);
 
        return "users/create";
    }
 
    @RequestMapping(value = "/create-user", method = RequestMethod.POST)
    public String processCreateUser(Model model, @RequestParam(value = "name") String name, @RequestParam(value = "username") String username, @RequestParam(value = "password") String password,
    		@RequestParam(required = false) List<Long> rolesId, final RedirectAttributes ra) {
 
        System.out.println("###### username: " + username);
        //System.out.println("###### roles: " + rolesId.toString());

        User userFind = userService.getUserByUsername(username);
        if(userFind != null) {
        	this.saveLog("/create-user", "Tentative de creation utilisateur login="+username, "Echec! Login existant");
        	ra.addFlashAttribute("error","Le login "+username+" existe deja !");
            return "redirect:/create-user";
        }
        
        User user = new User();
        user.setName(name);
        user.setUsername(username);
        user.setPassword(password);
        user.setDateCreation(new Date());
        User usersave = userService.save(user);
        if(rolesId!=null && usersave!=null) {
	        //Set<UserRole> userRoles = new HashSet<>();
	        for (Long roleId : rolesId) {
	            Role role = roleService.findById(roleId);
	            if(role == null){
	                continue;
	            	/*ra.addFlashAttribute("error", "roles inexistants");
	                return "redirect:/create-user";*/
	            }
	            UserRole userRole = new UserRole();
	            userRole.setUser(usersave);
	            userRole.setRole(role);
	            userRoleService.save(userRole);
	            
	            //userRoles.add(role);
	        }
	        //user.setRoles(roles);
        }
             
        //user.setPassword("");
        if(usersave == null) {
        	this.saveLog("/create-user", "Tentative de creation utilisateur user = "+user.toString(), "Echec de creation!");
        	ra.addFlashAttribute("error","Echec d'enregistrement");
            return "redirect:/create-user";
        }
        
        this.saveLog("/create-user", "Tentative de creation utilisateur user = "+user.toString(), "Operation OK");
    	ra.addFlashAttribute("success","Enregistrement réussi !");
        return "redirect:/users";
    } 
    	
    @RequestMapping(value = "/desactive-user", method = RequestMethod.POST)
    public String enabledUser(@RequestParam(value = "userId") Long userId, Model model, final RedirectAttributes ra) { 
    	User userFind = userService.findById(userId);
        if(userFind == null) {
        	this.saveLog("/desactive-user", "Tentative d'activation/desactivation utilisateur userId = "+userId, "Echec! User inexistant");
        	ra.addFlashAttribute("error","action échouée !");
            return "redirect:/users";
        }
        
        userFind.setEnabled(!userFind.isEnabled());
        userService.save(userFind);
        this.saveLog("/desactive-user", "Tentative d'activation/desactivation utilisateur userId = "+userId, "operation OK");
        ra.addFlashAttribute("success","action effectuée !");
        return "redirect:/users";
    }
    
    @RequestMapping(value = "/details-user{id}", method = RequestMethod.GET)
    public String detailsUser(@PathVariable(value = "id") Long id, Model model) { 
        model.addAttribute("user", userService.findById(id));
        this.saveLog("/details-user"+id, "Afficher details utilisateur", "Operation OK");
        //model.addAttribute("roles", roleService.findAll());
        return "users/details";
    }
    
    @RequestMapping(value = "/edit-user{id}", method = RequestMethod.GET)
    public String editUser(@PathVariable(value = "id") Long id, Model model) { 
        model.addAttribute("user", userService.findById(id));
        model.addAttribute("roles", roleService.findAll());
        return "users/edit";
    }
 
    @RequestMapping(value = "/edit-user{id}", method = RequestMethod.POST)
    public String updateUser(@PathVariable(value = "id") Long id, Model model, @RequestParam(value = "username") String username, @RequestParam(value = "name") String name,
    		@RequestParam(value = "password") String password, @RequestParam(required = false) List<Long> rolesId, final RedirectAttributes ra) {
 
        System.out.println("###### username: " + username+" name: " + name);
        System.out.println("###### roles user: " + rolesId);

        User user = userService.findById(id);
        if(user == null) {
        	this.saveLog("/edit-user"+id, "Modifier info utilisateur", "Echec! user inexistant");
        	ra.addFlashAttribute("error","user "+username+" do not exists !");
            return "redirect:/edit-user"+id;
        }

        user.setUsername(username);
        user.setName(name);
        if(password!=null && !password.isEmpty()) {
        	//System.out.println("###### Pwd exist user: " + password);
        	user.setPassword(bCryptPasswordEncoder.encode(password));
        }
        
        /*if(rolesId!=null) {
        	Set<Role> roles = new HashSet<>();
	        for (Long roleId : rolesId) {
	            Role role = roleService.findById(roleId);
	            if(role == null){
	                ra.addFlashAttribute("error", "roles inexistants");
	                return "redirect:/edit-user";
	            }
	            roles.add(role);
	        }
	        user.setRoles(roles);
        }else
        	user.setRoles(new HashSet<Role>());*/
        
        User userUpdate = userService.update(rolesId, user);
        //System.out.println("###### user save: " + user.toString());
        //user.setPassword("");
        if(userUpdate == null) {
        	this.saveLog("/edit-user"+id, "Modifier info utilisateur "+user.toString(), "Echec!");
        	ra.addFlashAttribute("error","Echec de modification");
            return "redirect:/edit-user"+id;
        }
        
        this.saveLog("/edit-user"+id, "Modifier info utilisateur"+user.toString(), "OK");
    	ra.addFlashAttribute("success","Modification réussi !");
        return "redirect:/users";
    }
    
}
