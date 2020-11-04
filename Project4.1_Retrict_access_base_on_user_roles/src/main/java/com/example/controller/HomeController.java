package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showPage() {
		return "home";
	}

	// add request mapping for /leaders
	@GetMapping("/leaders")
	public String showManagers() {
		return "leaders";
	}
	
	// add request mapping for /systems
	@GetMapping("/systems")
	public String showAdmins() {
		return "systems";
	}
}
