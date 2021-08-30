package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Log;
import com.example.demo.model.PojoSearch;
import com.example.demo.service.LogService;
import com.example.demo.service.UserService;

@Controller
public class LogController extends UtilController{
	
	@Autowired
    private LogService logService;
	
	@Autowired
    private UserService userService;
	
	@RequestMapping(value = "/activities", method = RequestMethod.GET)
    public String getFormLogs(Model model) {
		model.addAttribute("users", userService.findAll());
        return "logs/index";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.POST)
    public String searchLogs(PojoSearch search, RedirectAttributes ra) {
        List<Log> logs = logService.search(search);
        System.out.println("##### Call service Search log OK ");

        ra.addFlashAttribute("dataSearch", search);
        if(logs == null || logs.size()<=0){
            ra.addFlashAttribute("error", "aucune activitée trouvée");
            return "redirect:/activities";
        }

        ra.addFlashAttribute("logs", logs);

        return "redirect:/activities";
    }
	
}
