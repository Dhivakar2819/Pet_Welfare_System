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
	VaccinesServices vaccineservices;

	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<Vaccines> list = vaccineservices.getVaccines();
		model.addAttribute("allvaccine", list);
		return "list-vaccine";
	}

	@GetMapping("/addformvaccine")
	public String showAddForm(Model model) {
		Vaccines vac = new Vaccines();
		model.addAttribute("addvaccine", vac);
		return "add-vaccine-form";
	}

	@PostMapping("/add")
	public String addNewVaccineDate(@ModelAttribute("addvdate") Vaccines vac) {
		vaccineservices.save(vac);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/updateformvaccine")
	public String showUpdateForm(@RequestParam("vacid") int id, Model model) {
		Vaccines vac = vaccineservices.findById(id);
		model.addAttribute("updatevaccine", vac);
		return "update-vaccine-form";
	}

	@PostMapping("/update")
	public String UpdateVaccines(@ModelAttribute("updatevaccine") Vaccines vac) {
		vaccineservices.save(vac);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/deletevaccine")
	public String deleteVaccines(@RequestParam("vacid") int id) {
		vaccineservices.deleteById(id);
		return "redirect:/vaccine/list";
	}

	@GetMapping("/getvaccine")
	public String getVaccines(@RequestParam("vacid") int id, Model model) {
		Vaccines vac = vaccineservices.findById(id);
		model.addAttribute("findvaccinebyid", vac);
		return "find-vaccine-by-id";
	}

}
