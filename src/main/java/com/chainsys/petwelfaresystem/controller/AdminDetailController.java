package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.model.AdminDetail;
import com.chainsys.petwelfaresystem.services.AdminDetailServices;

@Controller
@RequestMapping("/admin")
public class AdminDetailController {
	@Autowired
	AdminDetailServices adminDetailServices;

	@GetMapping("/adminlist")
	public String getFindAll(Model model) {
		List<AdminDetail> listAdmin = adminDetailServices.getAdminDetail();
		model.addAttribute("alladmin", listAdmin);
		return "list-admin";
	}

	@GetMapping("/addadmin")
	public String showAddAdminDetail(Model model) {
		AdminDetail admin = new AdminDetail();
		model.addAttribute("addadmin", admin);
		return "add-admin-form";
	}

	@PostMapping("/addadmindetail")
	public String addNewAdminDetail(@Valid @ModelAttribute("addadmin") AdminDetail adminDetail, Model model, Errors errors) {
		if (errors.hasErrors()) {
			return "add-admin-form";
		} else {
			try {
				adminDetailServices.save(adminDetail);
				model.addAttribute("result", "Admin registration completed successfully");
				return "add-admin-form";
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return "add-admin-form";
			}
		}
	}

	@GetMapping("/updateadmin")
	public String showUpdateBreed(@RequestParam("adid") int id, Model model) {
		AdminDetail admin = adminDetailServices.findById(id);
		model.addAttribute("updateadmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateadmindetain")
	public String updateAdminDetail(@Valid @ModelAttribute("updateadmin") AdminDetail adminDetail, Model model,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-admin-form";
		} else {
			try {
				adminDetailServices.save(adminDetail);
				model.addAttribute("result", "Admin registration completed successfully");
				return "update-admin-form";
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return "update-admin-form";
			}
		}

	}

	@GetMapping("/deleteadmin")
	public String deleteAdminDetail(@RequestParam("adid") int id, Model model) {
		adminDetailServices.deleteById(id);
		model.addAttribute("delete", "deleted successfully");
		return "list-admin";
	}

	@GetMapping("/getadmin")
	public String getAdminDetail(@RequestParam("adid") int id, Model model) {
		AdminDetail admin = adminDetailServices.findById(id);
		model.addAttribute("findadminbyid", admin);
		return "find-admin-by-id";
	}

	@GetMapping("/adminlogin")
	public String getAdminLogin(Model model) {
		AdminDetail adminDetail = new AdminDetail();
		model.addAttribute("adminDetail", adminDetail);
		return "adminlogin";
	}

	@PostMapping("/adminloginpage")
	public String checkingAccess(@ModelAttribute("adminlogin") AdminDetail admin, Model model) {
		AdminDetail adminDetail = adminDetailServices.getEmailAndAdminPassword(admin.getEmail(),
				admin.getAdminPassword());
		if (adminDetail != null) {

			return "redirect:/admin/index";
		} else 
			model.addAttribute("signin", "Log in failed");
		return "adminlogin";
	}

	@GetMapping("/index")
	public String getIndex(Model model) {
		return "admin-index";
	}
}
