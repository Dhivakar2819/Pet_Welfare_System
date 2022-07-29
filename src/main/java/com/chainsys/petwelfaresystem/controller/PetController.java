package com.chainsys.petwelfaresystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.petwelfaresystem.Services.PetServices;
import com.chainsys.petwelfaresystem.pojo.Pet;
import com.chainsys.petwelfaresystem.repository.PetRepository;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Autowired
	private PetRepository petr;
	@Autowired
	PetServices petservies;
	@GetMapping("/addpet")
	public String showAddForm(Model model){
		Pet pet=new Pet();
		model.addAttribute("addpet",pet);
		return "add-pet-form";
	}
}
