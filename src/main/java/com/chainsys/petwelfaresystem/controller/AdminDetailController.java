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

import com.chainsys.petwelfaresystem.model.AdminDetail;
import com.chainsys.petwelfaresystem.services.AdminDetailServices;

@Controller
@RequestMapping("/admin")
public class AdminDetailController {
	@Autowired
	AdminDetailServices adminDetailServices;
	private static final String ADDFORM="add-admin-form";
	private static final String UPDATEFORM="update-admin-form";
	private static final String ADMINLOGIN="adminlogin";
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
		return ADDFORM;
	}

	@PostMapping("/addadmindetail")
	public String addNewAdminDetail(@Valid @ModelAttribute("addadmin")  AdminDetail adminDetail, Model model, Errors errors) {
		if (errors.hasErrors()) {
			return ADDFORM;
		} else {
			try {
				adminDetailServices.save(adminDetail);
				model.addAttribute("result", "Admin registration completed successfully");
				return "redirect:/admin/addadmin";
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return ADDFORM;
			}
		}
	}

	@GetMapping("/updateadmin")
	public String showUpdateBreed(@RequestParam("adid") int id, Model model) {
		AdminDetail admin = adminDetailServices.findById(id);
		model.addAttribute("updateadmin", admin);
		return UPDATEFORM;
	}

	@PostMapping("/updateadmindetain")
	public String updateAdminDetail(@Valid @ModelAttribute("updateadmin")  AdminDetail adminDetail, Model model,
			Errors errors) {
		if (errors.hasErrors()) {
			return UPDATEFORM;
		} else {
			try {
				adminDetailServices.save(adminDetail);
				model.addAttribute("result", "Admin registration completed successfully");
				return UPDATEFORM;
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return UPDATEFORM;
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
		model.addAttribute("adminlogins", adminDetail);
		return ADMINLOGIN;
	}

	@PostMapping("/adminloginpage")
	public String checkingAccess(@ModelAttribute("adminlogins")  AdminDetail adminDetail, Model model) {
		AdminDetail adminDetails = adminDetailServices.getEmailAndAdminPassword(adminDetail.getEmail(),
				adminDetail.getAdminPassword());
		if (adminDetails != null) {

			return "redirect:/admin/index";
		} else 
			model.addAttribute("signin", "Log in failed");
		return ADMINLOGIN;
	}

	@GetMapping("/index")
	public String getIndex(Model model) {
		return "admin-index";
	}
}
