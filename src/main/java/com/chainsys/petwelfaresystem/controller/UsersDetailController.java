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

import com.chainsys.petwelfaresystem.dto.UsersDetailPetDTO;
import com.chainsys.petwelfaresystem.model.UsersDetail;
import com.chainsys.petwelfaresystem.services.BreedServices;
import com.chainsys.petwelfaresystem.services.UsersDetailServices;

@Controller
@RequestMapping("/usersdetail")
public class UsersDetailController {
	@Autowired
	UsersDetailServices userDetailServices;
	@Autowired
	private BreedServices breedServices;

	@GetMapping("/userdetaillist")
	public String getFindAllUsersDetail(Model model) {
		List<UsersDetail> listUserDetail = userDetailServices.getUserDetailByOrder();
		model.addAttribute("alluserdetail", listUserDetail);
		return "list-usersdetail";
	}

	@GetMapping("/addformuser")
	public String showAddUsersDetail(Model model) {
		UsersDetail userDetail = new UsersDetail();
		model.addAttribute("adduserdetail", userDetail);
		return "add-usersdetail-form";
	}

	@PostMapping("/adduser")
	public String addNewUsersDetail( @ModelAttribute("adduserdetail") UsersDetail userDetail,
			Model model) {
		
			try {
				userDetailServices.save(userDetail);
				model.addAttribute("result", "Registration completed successfully");
				return "add-usersdetail-form";
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return "add-usersdetail-form";
			
		}
	}

	@GetMapping("/updateformuser")
	public String showUpdateUsersDetail(@RequestParam("userid") int id, Model model) {
		UsersDetail userDetail = userDetailServices.findById(id);
		model.addAttribute("updateusersdetail", userDetail);
		return "update-usersdetail-form";
	}

	@PostMapping("/updateuser")
	public String updateUsersDetail(@Valid @ModelAttribute("updateusersdetail") UsersDetail userDetail, Model model,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-usersdetail-form";
		} else {
			try {
				userDetailServices.save(userDetail);
				model.addAttribute("result", "Update completed successfully");
				return "redirect:/usersdetail/userloginpage";
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return "redirect:/usersdetail/userdetaillist";
			}
		}
	}

	@GetMapping("/deleteuserdetail")
	public String deleteUsersDetail(@RequestParam("userid") int id) {
		userDetailServices.deleteById(id);
		return "redirect:/usersdetail/userdetaillist";
	}

	@GetMapping("/getuserdetail")
	public String getUsersDetail(@RequestParam("userid") int id, Model model) {
		UsersDetail userDetail = userDetailServices.findById(id);
		model.addAttribute("findusersdetailbyid", userDetail);
		return "find-usersdetail-by-id";
	}

	@GetMapping("/getuserpet")
	public String getUserDetailAndPet(@RequestParam("id") int id, Model model) {

		model.addAttribute("breedname", breedServices);
		UsersDetailPetDTO dto = userDetailServices.getUsersAndPet(id);
		model.addAttribute("getuser", dto.getUsersdetail());
		model.addAttribute("petlist", dto.getPetlist());
		model.addAttribute("userId",dto.getUsersdetail().getUserId());
		return "list-user-pet";
	}

	@GetMapping("/userloginpage")
	public String getUserLogin(Model model) {
		UsersDetail userDetail = new UsersDetail();
		model.addAttribute("loginform", userDetail);
		return "userlogin";
	}

	@PostMapping("/userlogin")
	public String checkingAccess(@ModelAttribute("loginform") UsersDetail usersDetail, Model model) {
		UsersDetail userDetail = userDetailServices.getUserByEmailAndPassword(usersDetail.getEmail(),
				usersDetail.getPassword());
		if
		(userDetail != null) {
			return "redirect:/usersdetail/getuserpet?id=" + userDetail.getUserId();
		} else
			return "redirect:/usersdetail/userloginpage";
	}

}
