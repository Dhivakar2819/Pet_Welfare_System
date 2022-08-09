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
import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.model.Breed;

@Controller
@RequestMapping("/breed")
public class BreedController {
	@Autowired
	BreedServices breedServices;
	
	@GetMapping("/breedlist")
	public String getFindAll(Model model) {
		List<Breed> listBreed=breedServices.getBreed();
		model.addAttribute("allbreed",listBreed);
		return "list-breed";
	}
	@GetMapping("/adminbreedlist")
	public String getFindAllAdmin(Model model) {
		List<Breed> listBreed=breedServices.getBreed();
		model.addAttribute("allbreeds",listBreed);
		return "admin-list-breed";
	}
	@GetMapping("/addbreed")
	public String showAddBreed(Model model) {
		Breed breed = new Breed();
		model.addAttribute("addbreeds", breed);
		return "add-breed-form";
	}

	@PostMapping("/addbreed")
	public String addNewBreed(@ModelAttribute("addbreeds") Breed breed) {
		breedServices.save(breed);
		return "redirect:/breed/adminbreedlist";
	}
	
	@GetMapping("/updatebreed")
	public String showUpdateBreed(@RequestParam("brid") int id, Model model ){
		Breed breed=breedServices.findById(id);
		model.addAttribute("updatebreeds", breed);
		return "update-breed-form";
	}

	@PostMapping("/updatebreed")
	public String UpdateBreed(@ModelAttribute("updatebreeds") Breed breed) {
		breedServices.save(breed);
		return "redirect:/breed/adminbreedlist";
	}
	
	
	@GetMapping("/deletebreed")
	public String deleteBreed(@RequestParam("brid") int id) {
		breedServices.deleteById(id);
		return "redirect:/breed/breedlist";
	}
	
	@GetMapping("/getbreed")
	public String getBreed(@RequestParam("brid") int id,Model model)
	{
		Breed breed=breedServices.findById(id);
		model.addAttribute("findbreedbyid",breed);
		return "find-breed-by-id";
	}
	@GetMapping("/getbreedpet")
	public String getBreedAndPet(@RequestParam("id") int id,Model model) {
		PetBreedDTO dto=breedServices.getPetAndBreed(id);
		model.addAttribute("getbreed",dto.getBreed());
		model.addAttribute("petlist",dto.getPetlist());
		return "list-breed-pet";
	}
	
}
