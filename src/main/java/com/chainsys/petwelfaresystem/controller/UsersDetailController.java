package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
	private static final String ADDFORM="add-usersdetail-form";
	private static final String UPDATEFORM="update-usersdetail-form";

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
		return ADDFORM;
	}

	@PostMapping("/adduser")
	public String addNewUsersDetail( @ModelAttribute("adduserdetail")  UsersDetail userDetail,
			Model model) {
		
			try {
				userDetailServices.save(userDetail);
				model.addAttribute("result", "Registration completed successfully");
				return ADDFORM;
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return ADDFORM;
			
		}
	}

	@GetMapping("/updateformuser")
	public String showUpdateUsersDetail(@RequestParam("userid") int id, Model model) {
		UsersDetail userDetail = userDetailServices.findById(id);
		model.addAttribute("updateusersdetail", userDetail);
		return UPDATEFORM;
	}

	@PostMapping("/updateuser")
	public String updateUsersDetail(@Valid @ModelAttribute("updateusersdetail")  UsersDetail userDetail, Model model,
			Errors errors) {
		if (errors.hasErrors()) {
			return UPDATEFORM;
		} else {
			try {
				userDetailServices.save(userDetail);
				model.addAttribute("result", "Update completed successfully");
				return UPDATEFORM;
			} catch (Exception er) {
				model.addAttribute("message", "this email is already exist");
				return UPDATEFORM;
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
	public String getUserDetailAndPet(HttpServletRequest request, Model model) {

		model.addAttribute("breedname", breedServices);
		HttpSession session = request.getSession();
		int userId = (int) session.getAttribute("userId");
		UsersDetailPetDTO dto = userDetailServices.getUsersAndPet(userId);
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
	public String checkingAccess(@ModelAttribute("loginform")  UsersDetail usersDetail, Model model,HttpSession session) {
		UsersDetail userDetail = userDetailServices.getUserByEmailAndPassword(usersDetail.getEmail(),
				usersDetail.getPassword());
		if
		(userDetail != null) {
			if(userDetail.getRole().equals("Admin")) {
				return "redirect:/admin/index";
			}
			else {
				 session.setAttribute("userId",userDetail.getUserId());
			return "redirect:/usersdetail/getuserpet"; }
		} else
			return "redirect:/usersdetail/userloginpage";
	}

}
