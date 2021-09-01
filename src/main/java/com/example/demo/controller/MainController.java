package com.example.demo.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ApiCaller;


@Controller
public class MainController extends UtilController{
	
	@Autowired
    private ApiCaller apiCaller;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
  
        return "index";
    }

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public String accessDenied(Model model) {
	
	    return "accessDenied";
	}
	
	@RequestMapping(value = "/mytest", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> mytest() {
		Map<String, Object> params = new LinkedHashMap<String, Object>();
		params.put("userId", 4);
		Map<String, Object> data = apiCaller.call("http://localhost:8081/myAppSB/api/desactive-user", params);
	    return data;
	}
	
	/*
	@Autowired
    private BankAccountDAO bankAccountDAO;
 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showBankAccounts(Model model) {
        List<BankAccountInfo> list = bankAccountDAO.getBankAccounts();
 
        model.addAttribute("accountInfos", list);
 
        return "accountsPage";
    }
 
    @RequestMapping(value = "/sendMoney", method = RequestMethod.GET)
    public String viewSendMoneyPage(Model model) {
 
        SendMoneyForm form = new SendMoneyForm(1L, 2L, 700d);
 
        model.addAttribute("sendMoneyForm", form);
 
        return "sendMoneyPage";
    }
 
    @RequestMapping(value = "/sendMoney", method = RequestMethod.POST)
    public String processSendMoney(Model model, SendMoneyForm sendMoneyForm) {
 
        System.out.println("Send Money::" + sendMoneyForm.getAmount());
 
        try {
            bankAccountDAO.sendMoney(sendMoneyForm.getFromAccountId(), //
                    sendMoneyForm.getToAccountId(), //
                    sendMoneyForm.getAmount());
        } catch (BankTransactionException e) {
            model.addAttribute("errorMessage", "Error: " + e.getMessage());
            return "/sendMoneyPage";
        }
        return "redirect:/";
    }
    */
    
}
