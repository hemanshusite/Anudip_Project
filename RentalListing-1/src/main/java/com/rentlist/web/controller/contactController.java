package com.rentlist.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rentlist.web.model.Contact;
import com.rentlist.web.service.contactService;

@Controller
public class contactController {
	
	@Autowired
	private contactService cs;
	
	@PostMapping("/contact")
	public String contact(@ModelAttribute("cobj") Contact c) {
		if(cs.contact(c)) {	
			return "redirect:/";
		}
		return "login";
	}
	
}
