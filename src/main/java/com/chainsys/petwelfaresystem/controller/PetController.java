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

import com.chainsys.petwelfaresystem.dto.PetVaccineDto;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.services.BreedServices;
import com.chainsys.petwelfaresystem.services.PetServices;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Autowired
	PetServices petServices;
	@Autowired
	BreedServices breedServices;
	
	
	@GetMapping("/petlist")
	public String getFindAllPet(Model model) {
		List<Pet>pet=petServices.getPet();
		model.addAttribute("allPets",pet);
		return "list-pet";
	}
	@GetMapping("/addpet")
	public String showAddPet(Model model){
		Pet pet=new Pet();
		model.addAttribute("breed",breedServices.getAllBreed());
		model.addAttribute("addpet",pet);
		return "add-pet-form";
	}
	@PostMapping("/addnewpet")
	public String addNewPet(@Valid @ModelAttribute("addpet") Pet pet,Model model,Errors error) {
		if(error.hasErrors()) {
			return "add-pet-form";
		}
		else {
		petServices.save(pet);
		model.addAttribute("result","Pet records added successfully");
		return "add-pet-form";}
	}
	@GetMapping("/updateformpet")
	public String showUpdatePet(@RequestParam("petid") int id, Model model ){
		Pet pet=petServices.findById(id);
		model.addAttribute("breed",breedServices.getAllBreed());
		model.addAttribute("updatepet",pet);
		return "update-pet-form";
	}

	@PostMapping("/updatepets")
	public String updatePet(@Valid@ModelAttribute("updatepet") Pet pet,Errors error) {
		if(error.hasErrors()) {
			return "update-pet-form";
		}
		else {
		petServices.save(pet);
		return "redirect:/pet/petlist";	
		}
	}
	@GetMapping("/deletepet")
	public String deletePet(@RequestParam("petid") int id) {
		petServices.deleteById(id);
		return "redirect:/pet/petlist";
	}
	
	@GetMapping("/getpet")
	public String getpet(@RequestParam("petid") int id,Model model)
	{
		Pet pet=petServices.findById(id);
		model.addAttribute("findpetbyid",pet);
		return "find-pet-by-id";
	}
	@GetMapping("/getvaccinebypetid")
	public String getPetDisease(@RequestParam("id") int id,Model model) {
		PetVaccineDto dto=petServices.getPetAndVaccine(id);
		model.addAttribute("getpetid",dto.getPet());
		model.addAttribute("vaccinelist",dto.getVaccineDateList());
		return "list-pet-vaccine";
	}
}
