package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.petwelfaresystem.model.UsersDetail;

@Controller
@RequestMapping("/home")
public class IndexController {
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("indexlist");
		return "index";
	}
//	@GetMapping("/userloginpage")
//	public String getUserLogin(Model model) {
//		UsersDetail userDetail = new UsersDetail();
//		model.addAttribute("loginform",userDetail);
//		return "userlogin";
//	}
//	@GetMapping("/customerlogin")
//    public String adminaccessform(Model model) {
//        Customer theCus = new Customer();
//        model.addAttribute("customer", theCus);
//        return "customer-login-form";
//    }                   

   
}
