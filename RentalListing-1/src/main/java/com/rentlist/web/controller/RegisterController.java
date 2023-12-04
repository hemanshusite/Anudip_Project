package com.rentlist.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rentlist.web.model.Message;
import com.rentlist.web.model.User;
import com.rentlist.web.service.userService;

@Controller
public class RegisterController {
	
	@Autowired
	private userService us;
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
//	@GetMapping("/users")
//	public List<User>getEmp() {
//		return us.getUsers();
//	}
	
	//Signup
	
	@GetMapping("/signup")
	public String signUp(Model m) {
		m.addAttribute("uobj",new User());
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signUp(@ModelAttribute("uobj") User u, Model m) {
		Message msg = new Message("Success", "Register Succesfull !!", "string");
		if(us.signUp(u)) {	
			m.addAttribute("msg",msg);
			return "redirect:/";
		}
		return "contact";
	}
	
//	@GetMapping("login")
//	public String login(Model m){
//		m.addAttribute("lobj", new User());
//		return "login";
//	}
//	
//	@PostMapping("login")
//	public String login(@ModelAttribute("lobj") User u, Model m) {
//		String uname = u.getUsername();
//		String pass =u.getPassword();
//		u =us.login(uname, pass);
//		if(u!=null && u.getUsername().equals(uname) && u.getPassword().equals(pass)) {	
//			return "redirect:/signup";
//		}
//		return "index";
//		
//	}
}
