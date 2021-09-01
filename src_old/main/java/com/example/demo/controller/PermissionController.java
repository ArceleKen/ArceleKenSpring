package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Permission;
import com.example.demo.service.PermissionService;

@Controller
public class PermissionController extends UtilController {

	@Autowired
    private PermissionService permissionService;
 
    @RequestMapping(value = "/permissions", method = RequestMethod.GET)
    public String permissions(Model model) {
        List<Permission> list = permissionService.findAll();
        this.saveLog("/permissions", "listing de permissions ", "OK");
        //System.out.println("###### permissions found: " + list);
        model.addAttribute("listpermissions", list);
 
        return "permissions/index";
    }
}
