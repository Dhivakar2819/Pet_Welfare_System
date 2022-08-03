package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController {
	@GetMapping("/index")
	public String getFindDisease(Model model) {
		model.addAttribute("alldisease");
		return "index";
	}
}
