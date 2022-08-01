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
import com.chainsys.petwelfaresystem.pojo.Breed;

@Controller
@RequestMapping("/breed")
public class BreedController {
	@Autowired
	BreedServices breed;
	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<Breed> listbr=breed.getBreed();
		model.addAttribute("allbreed",listbr);
		return "list-breed";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Breed br = new Breed();
		model.addAttribute("addbreed", br);
		return "add-breed-form";
	}

	@PostMapping("/add")
	public String addNewBreed(@ModelAttribute("addbreed") Breed br) {
		breed.save(br);
		return "redirect:/breed/list";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("brid") int id, Model model ){
		Breed br=breed.findById(id);
		model.addAttribute("updatebreed", br);
		return "update-breed-form";
	}

	@PostMapping("/update")
	public String UpdateBreed(@ModelAttribute("updatebreed") Breed br) {
		breed.save(br);
		return "redirect:/breed/list";
	}
	
	
	@GetMapping("/deletebreed")
	public String deleteBreed(@RequestParam("brid") int id) {
		breed.deleteById(id);
		return "redirect:/breed/list";
	}
	
	@GetMapping("/getbreed")
	public String getBreed(@RequestParam("brid") int id,Model model)
	{
		Breed br=breed.findById(id);
		model.addAttribute("findbreedbyid",br);
		return "find-breed-by-id";
	}
	@GetMapping("/getpetbreed")
	public String GetPet(@RequestParam("id") int id,Model model) {
		PetBreedDTO dto=breed.getPetAndBreed(id);
		model.addAttribute("getbreed",dto.getBreed());
		model.addAttribute("petlist",dto.getPetlist());
		return "list-breed-pet";
	}
	
}
