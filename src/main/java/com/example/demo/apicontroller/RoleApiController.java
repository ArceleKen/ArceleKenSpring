package com.example.demo.apicontroller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.controller.UtilController;
import com.example.demo.model.Permission;
import com.example.demo.model.Role;
import com.example.demo.service.PermissionService;
import com.example.demo.service.RoleService;

@RestController
@RequestMapping("/api")
public class RoleApiController extends UtilController {
	
	@Autowired
    private RoleService roleService;
 
    @RequestMapping(value = "/roles", method = RequestMethod.GET, //
    				produces = { MediaType.APPLICATION_JSON_VALUE})
    public Map<String, Object> roles() {
        List<Role> list = roleService.findAll();
 
        return this.responseAPI("OK", "success", list);
    }
    
    
}
