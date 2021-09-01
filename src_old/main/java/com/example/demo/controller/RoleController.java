package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Permission;
import com.example.demo.model.Role;
import com.example.demo.service.PermissionService;
import com.example.demo.service.RoleService;

@Controller
public class RoleController extends UtilController {
	
	@Autowired
    private RoleService roleService;
	
	@Autowired
    private PermissionService permissionService;
 
    @RequestMapping(value = "/roles", method = RequestMethod.GET)
    public String roles(Model model) {
        List<Role> list = roleService.findAll();

        System.out.println("###### roles found: " + list);
        this.saveLog("/roles", "listing de roles ", "OK");
        model.addAttribute("listroles", list);
 
        return "roles/index";
    }
    
    @RequestMapping(value = "/create-role", method = RequestMethod.GET)
    public String getCreateRole(Model model) {
    	model.addAttribute("permissions", permissionService.findAll());
 
        return "roles/create";
    }
 
    @RequestMapping(value = "/create-role", method = RequestMethod.POST)
    public String processCreateRole(Model model, @RequestParam(value = "name") String name, @RequestParam(value = "description") String description, 
    		@RequestParam(required = false) List<Long> permissionsId, final RedirectAttributes ra) {
    	
        System.out.println("###### Role name: " + name);
        //System.out.println("###### roles: " + rolesId.toString());

        Role roleFind = roleService.findByName(name);
        if(roleFind != null) {
        	this.saveLog("/create-role", "tentative de creation role ", "Echec! Existe deja");
        	ra.addFlashAttribute("error","role "+name+" existe deja !");
            return "redirect:/create-role";
        }
        
        Role role = new Role();
        role.setName(name);   
        role.setDescription(description);  
		role.setDateCreation(new Date());
        if(permissionsId!=null) {
	        Set<Permission> permissions = new HashSet<>();
	        for (Long permissionId : permissionsId) {
	        	Permission permission = permissionService.findById(permissionId);
	            if(permission == null){
	                ra.addFlashAttribute("error", "permissions inexistants");
	                return "redirect:/create-user";
	            }
	            permissions.add(permission);
	        }
	        role.setPermissions(permissions);
        }
        Role rolesave = roleService.save(role);
        System.out.println("###### user save: " + role.toString());
        
        if(rolesave == null) {
        	this.saveLog("/create-role", "tentative de creation role "+role.toString(), "Echec!");
        	ra.addFlashAttribute("error","Echec d'enregistrement");
            return "redirect:/create-role";
        }
        
        this.saveLog("/create-role", "tentative de creation role "+role.toString(), "OK");
    	ra.addFlashAttribute("success","Enregistrement réussi !");
        return "redirect:/roles";
    } 
    		
    @RequestMapping(value = "/edit-role{id}", method = RequestMethod.GET)
    public String editRole(@PathVariable(value = "id") Long id, Model model) { 
        model.addAttribute("role", roleService.findById(id));
    	model.addAttribute("permissions", permissionService.findAll());
        return "roles/edit";
    }
    
    @RequestMapping(value = "/details-role{id}", method = RequestMethod.GET)
    public String detailstRole(@PathVariable(value = "id") Long id, Model model) {
    	System.out.println("###### find role: " + id);
    	Role role = roleService.findById(id);
        model.addAttribute("role", role);    	
    	//model.addAttribute("permissions", permissionService.findAll());
        return "roles/details";
    }
 
    @RequestMapping(value = "/edit-role{id}", method = RequestMethod.POST)
    public String updateRole(@PathVariable(value = "id") Long id, Model model, @RequestParam(value = "name") String name, @RequestParam(value = "description") String description,
    		@RequestParam(required = false) List<Long> permissionsId, final RedirectAttributes ra) {
    	
        System.out.println("###### name role: " + name);
        //System.out.println("###### roles: " + rolesId.toString());

        Role role = roleService.findById(id);
        if(role == null) {
        	this.saveLog("/edit-role"+id, "tentative de modification role", "Echec! inexistant");
        	ra.addFlashAttribute("error","role do not exists !");
            return "redirect:/edit-role"+id;
        }

        role.setName(name);
        role.setDescription(description); 
        if(permissionsId!=null) {
	        Set<Permission> permissions = new HashSet<>();
	        for (Long permissionId : permissionsId) {
	        	Permission permission = permissionService.findById(permissionId);
	            if(permission == null){
	                ra.addFlashAttribute("error", "permissions inexistants");
	                return "redirect:/create-user";
	            }
	            permissions.add(permission);
	        }
	        role.setPermissions(permissions);
        }
        Role rolesave = roleService.update(id, role);
        System.out.println("###### role save: " + role.toString());
        
        if(rolesave == null) {
        	this.saveLog("/edit-role"+id, "tentative de modification role "+role.toString(), "Echec!");
        	ra.addFlashAttribute("error","Echec de modification");
            return "redirect:/edit-role"+id;
        }
        
        this.saveLog("/edit-role"+id, "tentative de modification role "+role.toString(), "OK");
    	ra.addFlashAttribute("success","Modification réussi !");
        return "redirect:/roles";
    }
    
    @RequestMapping(value = "/delete-role{id}", method = RequestMethod.POST)
    public String updateRole(@PathVariable(value = "id") Long id, Model model, final RedirectAttributes ra) {
    	
        Role Role = roleService.findById(id);
        if(Role == null) {
        	this.saveLog("/delete-role"+id, "tentative de supprssion role", "Echec! Role inexistant");
        	ra.addFlashAttribute("error","role do not exists !");
            return "redirect:/roles";
        }

        boolean status = roleService.deleteById(Role);
        if(!status) {
        	this.saveLog("/delete-role"+id, "tentative de supprssion role", "Echec!");
        	ra.addFlashAttribute("error","Echec de suppression de role !");
        }else {
        	this.saveLog("/delete-role"+id, "tentative de supprssion role", "OK");
        	ra.addFlashAttribute("success","Suppression de role réussi !");
        }
        return "redirect:/roles";
    }
    
}
