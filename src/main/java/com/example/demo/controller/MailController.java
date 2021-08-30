package com.example.demo.controller;

import java.io.File;
import java.io.IOException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.service.LogService;
import com.example.demo.service.UserService;

@Controller
public class MailController extends UtilController {
	
	@Autowired
    public JavaMailSender emailSender;
	
	@Autowired
    private LogService logService;
	
	@Autowired
    private UserService userService;
	
	@RequestMapping(value = "/send-mail", method = RequestMethod.GET)
	public String getformMail(Model model, RedirectAttributes ra) {
	    return "mails/send";
	}
	
	@RequestMapping(value = "/send-mail", method = RequestMethod.POST)
	public String postsendMail(@RequestParam(value = "objet", required = true) String objet,
	                           @RequestParam(value = "destinataire", required = true) String destinataire,
	                           @RequestParam(value = "emailscc", required = false) String emailscc,
	                           @RequestParam(value = "content", required = true) String content,
	                           @RequestParam(value = "pj", required = false) MultipartFile pj,
	                           RedirectAttributes ra, Authentication authentication) throws IOException {
	    if(objet == null || objet.isEmpty() || objet.equals("")){
	        ra.addFlashAttribute("error", "objet manquant!");
	        return "redirect:/send-mail";
	    }
	    
	    if(destinataire == null || destinataire.isEmpty() || destinataire.equals("")){
	        ra.addFlashAttribute("error", "email destinataire manquant!");
	        return "redirect:/send-mail";
	    }
	
	    if(content == null || content.isEmpty() || content.equals("")){
	        ra.addFlashAttribute("error", "Contenu texte du mail manquant!");
	        return "redirect:/send-mail";
	    }
		
	    System.out.println("### Content mail: "+content);
	    
		if (pj==null || pj.isEmpty()) {
			System.out.println("##### File not found");
	    }
		
	    if (emailscc!=null || !emailscc.isEmpty()) {
	    	
	    }
	    
	    System.out.println("### mail To: "+destinataire);
	    System.out.println("### mail Cc: "+emailscc);
	    System.out.println("### mail Subject: "+objet);
	    System.out.println("### mail Content: "+content);
	    
	    try {
		    // Create a Simple MailMessage.
	        SimpleMailMessage message = new SimpleMailMessage();
	         
	        message.setTo(destinataire);
	        message.setSubject(objet);
	        message.setText(content);
	 
	        // Send Message!
	        this.emailSender.send(message);
	    	this.saveLog("/send-mail", "envoi mail objet="+objet+" | dest="+destinataire+" | Cc="+emailscc, "Envoi OK");
		    ra.addFlashAttribute("success", "Mail envoyé!  "+objet);
        }catch(Exception e) {
	        System.out.println("### Send mail Failed");
	        this.saveLog("/send-mail", "envoi mail objet="+objet+" | dest="+destinataire+" | Cc="+emailscc, "Echec !");
		    ra.addFlashAttribute("error", "Echec d'envoi de mail!  "+objet);
        	e.printStackTrace();
        }
	    
	    /*//Envoi de mail avec pièce jointe
	    MimeMessage message = emailSender.createMimeMessage();
        boolean multipart = true;
 
        try {
	        MimeMessageHelper helper = new MimeMessageHelper(message, multipart);
	        helper.setTo(destinataire);
	        helper.setSubject(objet);
	        helper.setText(content);
	        String path1 = pj.getOriginalFilename();
	        System.out.println("### PJ path: "+path1);
	        // Attachment 1
	        FileSystemResource file1 = new FileSystemResource(new File(path1));
	        helper.addAttachment("fileTest", file1);
	 
	        emailSender.send(message);
	        System.out.println("### Send mail Ok");
	        
		    this.saveLog("/send-mail", "envoi mail objet="+objet+" | dest="+destinataire+" | Cc="+emailscc, "Envoi OK");
		    ra.addFlashAttribute("success", "Mail envoyé!  "+objet);
        }catch(Exception e) {
	        System.out.println("### Send mail Failed");
	        this.saveLog("/send-mail", "envoi mail objet="+objet+" | dest="+destinataire+" | Cc="+emailscc, "Echec !");
		    ra.addFlashAttribute("error", "Echec d'envoi de mail!  "+objet);
        	e.printStackTrace();
        }*/
	    
	    return "redirect:/send-mail";
	}

}
