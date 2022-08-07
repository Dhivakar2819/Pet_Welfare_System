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

import com.chainsys.petwelfaresystem.Services.BreedServices;
import com.chainsys.petwelfaresystem.Services.UsersDetailServices;
import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.dto.UsersDetailPetDTO;
import com.chainsys.petwelfaresystem.model.UsersDetail;

@Controller
@RequestMapping("/usersdetail")
public class UsersDetailController {
	@Autowired
	UsersDetailServices userDetailServices;
	@Autowired
	private BreedServices breedServices;
	@GetMapping("/userdetaillist")
	public String getFindAllUsersDetail(Model model) {
		List<UsersDetail> listUserDetail=userDetailServices.getUserDetail();
		model.addAttribute("alluserdetail",listUserDetail);
		return "list-usersdetail";
	}
	
	@GetMapping("/addformuser")
	public String showAddUsersDetail(Model model) {
		UsersDetail userDetail = new UsersDetail();
		model.addAttribute("adduserdetail", userDetail);
		return "add-usersdetail-form";
	}

	@PostMapping("/adduser")
	public String addNewUsersDetail(@ModelAttribute("adduserdetail") UsersDetail ud) {
		userDetailServices.save(ud);
		return "redirect:/usersdetail/userloginpage";
	}
	
	@GetMapping("/updateformuser")
	public String showUpdateUsersDetail(@RequestParam("userid") int id, Model model ){
		UsersDetail userDetail=userDetailServices.findById(id);
		model.addAttribute("updateusersdetail", userDetail);
		return "update-usersdetail-form";
	}

	@PostMapping("/updateuser")
	public String UpdateUsersDetail(@ModelAttribute("updateusersdetail") UsersDetail userDetail) {
		userDetailServices.save(userDetail);
		return "redirect:/usersdetail/userdetaillist";
	}
	
	
	@GetMapping("/deleteuserdetail")
	public String deleteUsersDetail(@RequestParam("userid") int id) {
		userDetailServices.deleteById(id);
		return "redirect:/usersdetail/userdetaillist";
	}
	
	@GetMapping("/getuserdetail")
	public String getUsersDetail(@RequestParam("userid") int id,Model model)
	{
		UsersDetail userDetail=userDetailServices.findById(id);
		model.addAttribute("findusersdetailbyid",userDetail);
		return "find-usersdetail-by-id";
	}
	@GetMapping("/getuserpet")
	public String getUserDetailAndPet(@RequestParam("id") int id,Model model) {
		
		model.addAttribute("breedname", breedServices);
		UsersDetailPetDTO dto=userDetailServices.getUsersAndPet(id);
		model.addAttribute("getuser",dto.getUsersdetail());
		model.addAttribute("petlist",dto.getPetlist());
		return "list-user-pet";
	}
	@GetMapping("/userloginpage")
	public String getUserLogin(Model model) {
		UsersDetail userDetail = new UsersDetail();
		model.addAttribute("loginform",userDetail);
		return "userlogin";
	}
	@PostMapping("/userlogin")
	public String checkingAccess(@ModelAttribute("loginform")UsersDetail usersDetail,Model model) {
		UsersDetail userDetail = userDetailServices.getUserByEmailAndPassword(usersDetail.getEmail(),usersDetail.getPassword());
        if (userDetail!= null){

            return "redirect:/usersdetail/getuserpet?id=";
        } else
            return "redirect:/usersdetail/userloginpage";
    }
	
}
