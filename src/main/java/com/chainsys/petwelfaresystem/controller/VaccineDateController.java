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

import com.chainsys.petwelfaresystem.Services.VaccineDateServices;
import com.chainsys.petwelfaresystem.model.VaccineDate;

@Controller
@RequestMapping("/vaccinedate")
public class VaccineDateController {
	@Autowired
	VaccineDateServices vaccinedateservices;

	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<VaccineDate> list = vaccinedateservices.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}

	@GetMapping("/addvaccinedate")
	public String showAddForm(Model model) {
		VaccineDate vd = new VaccineDate();
		model.addAttribute("addvdate", vd);
		return "add-vaccinedate-form";
	}

	@PostMapping("/add")
	public String addNewVaccineDate(@ModelAttribute("addvdate") VaccineDate vd) {
		vaccinedateservices.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/updatevaccinedate")
	public String showUpdateForm(@RequestParam("vdid") int id, Model model) {
		VaccineDate vda = vaccinedateservices.findById(id);
		model.addAttribute("updatevdate", vda);
		return "update-vaccinedate-form";
	}

	@PostMapping("/update")
	public String UpdateVaccineDate(@ModelAttribute("updatevdate") VaccineDate vd) {
		vaccinedateservices.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/deletevaccinedate")
	public String deleteVaccineDate(@RequestParam("vdid") int id) {
		vaccinedateservices.deleteById(id);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/getvaccinedate")
	public String getVaccineDate(@RequestParam("vdid") int id, Model model) {
		VaccineDate vd = vaccinedateservices.findById(id);
		model.addAttribute("findvdatebyid", vd);
		return "find-vaccinedate-by-id";
	}

}
