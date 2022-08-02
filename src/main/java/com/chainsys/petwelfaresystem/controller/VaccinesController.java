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

import com.chainsys.petwelfaresystem.Services.VaccinesServices;
import com.chainsys.petwelfaresystem.model.Vaccines;

@Controller
@RequestMapping("/vaccine")
public class VaccinesController {
	@Autowired
	VaccinesServices vaccineServices;

	@GetMapping("/list")
	public String getFindAllVaccine(Model model) {
		List<Vaccines> vaccinelist = vaccineServices.getVaccines();
		model.addAttribute("allvaccine", vaccinelist);
		return "list-vaccine";
	}

	@GetMapping("/addformvaccine")
	public String showAddVaccine(Model model) {
		Vaccines vaccine = new Vaccines();
		model.addAttribute("addvaccine", vaccine);
		return "add-vaccine-form";
	}

	@PostMapping("/addnewvaccine")
	public String addNewVaccine(@ModelAttribute("addvaccine") Vaccines vac) {
		vaccineServices.save(vac);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/updateformvaccine")
	public String showUpdateVaccine(@RequestParam("vacid") int id, Model model) {
		Vaccines vaccine = vaccineServices.findById(id);
		model.addAttribute("updatevaccine", vaccine);
		return "update-vaccine-form";
	}

	@PostMapping("/updatevaccines")
	public String UpdateVaccines(@ModelAttribute("updatevaccine") Vaccines vac) {
		vaccineServices.save(vac);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/deletevaccine")
	public String deleteVaccines(@RequestParam("vacid") int id) {
		vaccineServices.deleteById(id);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/getvaccine")
	public String getVaccines(@RequestParam("vacid") int id, Model model) {
		Vaccines vaccine = vaccineServices.findById(id);
		model.addAttribute("findvaccinebyid", vaccine);
		return "find-vaccine-by-id";
	}

}
