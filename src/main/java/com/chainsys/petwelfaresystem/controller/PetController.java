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

import com.chainsys.petwelfaresystem.Services.PetServices;
import com.chainsys.petwelfaresystem.pojo.Pet;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Autowired
	PetServices petservices;
	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<Pet>pet=petservices.getPet();
		model.addAttribute("allPets",pet);
		return "list-pet";
	}
	@GetMapping("/addpet")
	public String showAddForm(Model model){
		Pet pet=new Pet();
		model.addAttribute("addpet",pet);
		return "add-pet-form";
	}
	@PostMapping("/add")
	public String addNewPet(@ModelAttribute("addpet") Pet pet) {
		petservices.save(pet);
		return "redirect:/pet/list";
	}
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("petid") int id, Model model ){
		Pet pet=petservices.findById(id);
		model.addAttribute("updatepet",pet);
		return "update-pet-form";
	}

	@PostMapping("/update")
	public String UpdatePet(@ModelAttribute("updatepet") Pet pet) {
		petservices.save(pet);
		return "redirect:/pet/list";
	}
	@GetMapping("/deletedoctor")
	public String deletePet(@RequestParam("petid") int id) {
		petservices.deleteById(id);
		return "redirect:/pet/list";
	}
	
	@GetMapping("/getpet")
	public String getpet(@RequestParam("petid") int id,Model model)
	{
		Pet pet=petservices.findById(id);
		model.addAttribute("findpetbyid",pet);
		return "find-pet-by-id";
	}
}
