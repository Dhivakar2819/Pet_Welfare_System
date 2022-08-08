package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.Services.AdminDetailServices;
import com.chainsys.petwelfaresystem.Services.BreedServices;
import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.model.AdminDetail;
import com.chainsys.petwelfaresystem.model.Breed;
import com.chainsys.petwelfaresystem.model.UsersDetail;

@Controller
@RequestMapping("/admin")
public class AdminDetailController {
	@Autowired
	AdminDetailServices adminDetailServices;
	@GetMapping("/adminlist")
	public String getFindAll(Model model) {
		List<AdminDetail> listAdmin=adminDetailServices.getAdminDetail();
		model.addAttribute("alladmin",listAdmin);
		return "list-admin";
	}
	
	@GetMapping("/addadmin")
	public String showAddAdminDetail(Model model) {
		AdminDetail admin = new AdminDetail();
		model.addAttribute("addadmin", admin);
		return "add-admin-form";
	}

	@PostMapping("/addadmindetail")
	public String addNewAdminDetail(@Valid @ModelAttribute("addbreeds") AdminDetail admin,Errors errors) {
		if(errors.hasErrors()) {
			return "add-admin-form";
		}
		else {
		adminDetailServices.save(admin);
		return "redirect:/admin/adminlist";}
	}
	
	@GetMapping("/updateadmin")
	public String showUpdateBreed(@RequestParam("adid") int id, Model model ){
		AdminDetail admin=adminDetailServices.findById(id);
		model.addAttribute("updateadmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateadmindetain")
	public String UpdateAdminDetail(@Valid @ModelAttribute("updateadmin") AdminDetail admin,Errors errors) {
		if(errors.hasErrors()) {
			return "update-admin-form";
		}
		else {
		adminDetailServices.save(admin);
		return "redirect:/admin/adminlist";}
	}
	
	
	@GetMapping("/deleteadmin")
	public String deleteAdminDetail(@RequestParam("adid") int id) {
		adminDetailServices.deleteById(id);
		return "redirect:/admin/adminlist";
	}
	
	@GetMapping("/getadmin")
	public String getAdminDetail(@RequestParam("adid") int id,Model model)
	{
		AdminDetail admin=adminDetailServices.findById(id);
		model.addAttribute("findbreedbyid",admin);
		return "find-admin-by-id";
	}
	@GetMapping("/adminlogin")
	public String getAdminLogin(Model model) {
		AdminDetail adminDetail = new AdminDetail();
		model.addAttribute("adminlogin",adminDetail);
		return "adminlogin";
	}
	@PostMapping("/adminloginpage")
	public String checkingAccess(@ModelAttribute("adminlogin")AdminDetail admin) {
		AdminDetail adminDetail = adminDetailServices.getAdminIdAndAdminPassword(admin.getAdminId(),admin.getAdminPassword());
        if (adminDetail!= null){

            return "redirect:/admin/index";
        } else
            return "invalid-user-error";
    }
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("buttom");
		return "admin-index";
	}
}
