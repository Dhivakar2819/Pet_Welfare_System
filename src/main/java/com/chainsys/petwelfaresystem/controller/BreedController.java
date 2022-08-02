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
	BreedServices breedController;
	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<Breed> listBreed=breedController.getBreed();
		model.addAttribute("allbreed",listBreed);
		return "list-breed";
	}
	
	@GetMapping("/addbreed")
	public String showAddBreed(Model model) {
		Breed breed = new Breed();
		model.addAttribute("addbreeds", breed);
		return "add-breed-form";
	}

	@PostMapping("/addbreed")
	public String addNewBreed(@ModelAttribute("addbreeds") Breed breed) {
		breedController.save(breed);
		return "redirect:/breed/list";
	}
	
	@GetMapping("/updatebreed")
	public String showUpdateBreed(@RequestParam("brid") int id, Model model ){
		Breed breed=breedController.findById(id);
		model.addAttribute("updatebreeds", breed);
		return "update-breed-form";
	}

	@PostMapping("/updatebreed")
	public String UpdateBreed(@ModelAttribute("updatebreeds") Breed breed) {
		breedController.save(breed);
		return "redirect:/breed/list";
	}
	
	
	@GetMapping("/deletebreed")
	public String deleteBreed(@RequestParam("brid") int id) {
		breedController.deleteById(id);
		return "redirect:/breed/list";
	}
	
	@GetMapping("/getbreed")
	public String getBreed(@RequestParam("brid") int id,Model model)
	{
		Breed breed=breedController.findById(id);
		model.addAttribute("findbreedbyid",breed);
		return "find-breed-by-id";
	}
	@GetMapping("/getbreedpet")
	public String GetBreedAndPet(@RequestParam("id") int id,Model model) {
		PetBreedDTO dto=breedController.getPetAndBreed(id);
		model.addAttribute("getbreed",dto.getBreed());
		model.addAttribute("petlist",dto.getPetlist());
		return "list-breed-pet";
	}
	
}
