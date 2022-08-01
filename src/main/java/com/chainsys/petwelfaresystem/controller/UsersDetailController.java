package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.Services.UsersDetailServices;
import com.chainsys.petwelfaresystem.model.UsersDetail;

@Controller
@RequestMapping("/usersdetail")
public class UsersDetailController {
	@Autowired
	UsersDetailServices userdetailservices;
	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<UsersDetail> listud=userdetailservices.getUserDetail();
		model.addAttribute("alluserdetail",listud);
		return "list-usersdetail";
	}
	
	@GetMapping("/addformuser")
	public String showAddForm(Model model) {
		UsersDetail ud = new UsersDetail();
		model.addAttribute("adduserdetail", ud);
		return "add-usersdetail-form";
	}

	@PostMapping("/add")
	public String addNewUsersDetail(@ModelAttribute("adduserdetail") UsersDetail ud) {
		userdetailservices.save(ud);
		return "redirect:/usersdetail/list";
	}
	
	@GetMapping("/updateformuser")
	public String showUpdateForm(@RequestParam("petid") int id, Model model ){
		UsersDetail ud=userdetailservices.findById(id);
		model.addAttribute("updateusersdetail", ud);
		return "update-usersdetail-form";
	}

	@PostMapping("/update")
	public String UpdateUsersDetail(@ModelAttribute("updateusersdetail") UsersDetail ud) {
		userdetailservices.save(ud);
		return "redirect:/usersdetail/list";
	}
	
	
	@GetMapping("/deleteuserdetail")
	public String deleteUsersDetail(@RequestParam("userid") int id) {
		userdetailservices.deleteById(id);
		return "redirect:/usersdetail/list";
	}
	
	@GetMapping("/getuserdetail")
	public String getUsersDetail(@RequestParam("userid") int id,Model model)
	{
		UsersDetail us=userdetailservices.findById(id);
		model.addAttribute("findusersdetailbyid",us);
		return "find-usersdetail-by-id";
	}
	
	
}
