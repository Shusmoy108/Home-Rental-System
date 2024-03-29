package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping
	public String welcome(Model model) {
		model.addAttribute("greeting", "Welcome!");
		model.addAttribute("tagline", "Choose Your Apartment");

		return "welcome";
	}
}
