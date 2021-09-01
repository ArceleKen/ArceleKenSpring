package com.example.demo.apicontroller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.controller.UtilController;
import com.example.demo.model.Role;
import com.example.demo.model.User;
import com.example.demo.model.UserRole;
import com.example.demo.service.RoleService;
import com.example.demo.service.UserRoleService;
import com.example.demo.service.UserService;

@RestController
@RequestMapping("/api")
public class UserApiController extends UtilController {
	
	@Autowired
    private UserService userService;
	
	@Autowired
    private UserRoleService userRoleService;
	
	@Autowired
    private RoleService roleService;

	@Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
 
    @RequestMapping(value = {"/users"}, method = RequestMethod.GET, //
            		produces = { MediaType.APPLICATION_JSON_VALUE} )
    public Map<String, Object> users() {
        List<User> list = userService.findAll();

        //System.out.println("###### users found: " + list);
        //this.saveLog("/users", "Lister les utilisateurs", "OK");
        
        return this.responseAPI("OK", "success", list);
    }
     
    @RequestMapping(value = "/create-user", method = RequestMethod.POST, //
    				produces = { MediaType.APPLICATION_JSON_VALUE})
    public Map<String, Object> processCreateUser(@RequestBody Map<String, Object> params){
        //System.out.println("###### roles: " + rolesId.toString());
        if(!(params.containsKey("name") && params.get("name") != null && 
        		params.containsKey("username") && params.get("username") != null &&
        		params.containsKey("password") && params.get("password") != null)) {
        	return this.responseAPI("Paramètres manquants !");
        }
        
        String name = (String)params.get("name");
		String username = (String)params.get("username");
		String password = (String)params.get("password");
		
        User userFind = userService.getUserByUsername(username);
        if(userFind != null) {
        	//this.saveLog("/create-user", "Tentative de creation utilisateur login="+username, "Echec! Login existant");
        	return this.responseAPI("Login deja existant!");
        }
        
        User user = new User();
        user.setName(name);
        user.setUsername(username);
        user.setPassword(password);
        user.setDateCreation(new Date());
        User usersave = userService.save(user);
        if(params.containsKey("rolesId") && params.get("rolesId")!=null && usersave!=null) {
	        //Set<UserRole> userRoles = new HashSet<>();
        	List<Object> rolesId = (List<Object>)params.get("rolesId"); 
	        for (Object roleId : rolesId) {
	            Role role = roleService.findById(Long.valueOf(roleId.toString()));
	            System.out.println("##### role id: "+Long.valueOf(roleId.toString()));
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
        	//this.saveLog("/create-user", "Tentative de creation utilisateur user = "+user.toString(), "Echec de creation!");
        	return this.responseAPI("Echec de creation!");
        }
        
        //this.saveLog("/create-user", "Tentative de creation utilisateur user = "+user.toString(), "Operation OK");
        return this.responseAPI("OK", "success", usersave.getId());
    } 
    	
    @RequestMapping(value = "/desactive-user", method = RequestMethod.POST, //
    				produces = { MediaType.APPLICATION_JSON_VALUE})
    public Map<String, Object> enabledUser(@RequestBody Map<String, Object> params) { 
    	if(!(params.containsKey("userId") && params.get("userId") != null)) {
        	return this.responseAPI("Paramètres manquants !");
        }
        
    	Long userId = (long) 0;
    	try {
            userId = Long.valueOf(params.get("userId").toString());
		} catch (NumberFormatException e) {
			return this.responseAPI("le paramètre userId doit un nombre entier");
		}
        	
    	User userFind = userService.findById(userId);
        if(userFind == null) {
        	//this.saveLog("/desactive-user", "Tentative d'activation/desactivation utilisateur userId = "+userId, "Echec! User inexistant");
            return this.responseAPI("User inexistant!");
        }
        
        userFind.setEnabled(!userFind.isEnabled());
        userService.saveWithoutContrain(userFind);
        //this.saveLog("/desactive-user", "Tentative d'activation/desactivation utilisateur userId = "+userId, "operation OK");
        return this.responseAPI("OK", "Success", null);
    }
    
    @RequestMapping(value = "/details-user{id}", method = RequestMethod.GET, //
    				produces = { MediaType.APPLICATION_JSON_VALUE})
    public Map<String, Object> detailsUser(@PathVariable(value = "id") Long id) { 
    	User user = userService.findById(id);
    	System.out.println("###### details user: " + user);
    	if(user == null) {
    		return this.responseAPI("User inexistant!");
        }
        //this.saveLog("/details-user"+id, "Afficher details utilisateur", "Operation OK");
        return this.responseAPI("OK", "Success", user);
    }
     
    @RequestMapping(value = "/edit-user{id}", method = RequestMethod.POST, //
    				produces = { MediaType.APPLICATION_JSON_VALUE})
    public Map<String, Object> updateUser(@PathVariable(value = "id") Long id, @RequestBody Map<String, Object> params){
        //System.out.println("###### roles: " + rolesId.toString());
        if(!(params.containsKey("name") && params.get("name") != null && 
        		params.containsKey("username") && params.get("username") != null &&
        		params.containsKey("password") && params.get("password") != null)) {
        	return this.responseAPI("Paramètres manquants !");
        }
        
        String name = (String)params.get("name");
		String username = (String)params.get("username");
		String password = (String)params.get("password");

        User user = userService.findById(id);
        if(user == null) {
        	//this.saveLog("/edit-user"+id, "Modifier info utilisateur", "Echec! user inexistant");
            return this.responseAPI("user inexistant");
        }

        user.setUsername(username);
        user.setName(name);
        if(password!=null && !password.isEmpty()) {
        	//System.out.println("###### Pwd exist user: " + password);
        	user.setPassword(bCryptPasswordEncoder.encode(password));
        }
        
        List<Long> rolesId = new ArrayList<Long>();
		if(params.containsKey("rolesId") && params.get("rolesId")!=null) {
	        //Set<UserRole> userRoles = new HashSet<>();
			try {
				List<Object> strRolesId = (List<Object>)params.get("rolesId"); 
				for(Object o : strRolesId) rolesId.add(Long.valueOf(o.toString()));
			}catch (Exception e) {
				e.getStackTrace();
			}
		}
		
        User userUpdate = userService.update(rolesId, user);
        //System.out.println("###### user save: " + user.toString());
        //user.setPassword("");
        if(userUpdate == null) {
        	//this.saveLog("/edit-user"+id, "Modifier info utilisateur "+user.toString(), "Echec!");
        	return this.responseAPI("Echec de modification");
        }
        
        //this.saveLog("/edit-user"+id, "Modifier info utilisateur"+user.toString(), "OK");
        return this.responseAPI("OK", "Success", userUpdate.getId());
    }
    
}
