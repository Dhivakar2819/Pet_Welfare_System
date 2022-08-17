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

import com.chainsys.petwelfaresystem.dto.VaccinesVaccineDateDto;
import com.chainsys.petwelfaresystem.model.Vaccines;
import com.chainsys.petwelfaresystem.services.VaccinesServices;

@Controller
@RequestMapping("/vaccine")
public class VaccinesController {
	@Autowired
	VaccinesServices vaccineServices;

	@GetMapping("/vaccinelist")
	public String getFindAllVaccine(Model model) {
		List<Vaccines> vaccinelist = vaccineServices.getVaccines();
		model.addAttribute("allvaccine", vaccinelist);
		return "list-vaccine";
	}
	@GetMapping("/adminvaccinelist")
	public String getFindAllVaccineAdmin(Model model) {
		List<Vaccines> vaccinelist = vaccineServices.getVaccines();
		model.addAttribute("allvaccine", vaccinelist);
		return "list-vaccine-admin";
	}
	@GetMapping("/addformvaccine")
	public String showAddVaccine(Model model) {
		Vaccines vaccine = new Vaccines();
		model.addAttribute("addvaccine", vaccine);
		return "add-vaccine-form";
	}

	@PostMapping("/addnewvaccine")
	public String addNewVaccine(@Valid @ModelAttribute("addvaccine")  Vaccines vac,Errors error,Model model) {
		if(error.hasErrors()) {
			return "add-vaccine-form";
		}
		else {
		vaccineServices.save(vac);
		model.addAttribute("addresult", "Added successfully");
		return "add-vaccine-form";}
	}

	@GetMapping("/updateformvaccine")
	public String showUpdateVaccine(@RequestParam("vacid") int id, Model model) {
		Vaccines vaccine = vaccineServices.findById(id);
		model.addAttribute("updatevaccine", vaccine);
		return "update-vaccine-form";
	}

	@PostMapping("/updatevaccines")
	public String updateVaccines(@Valid @ModelAttribute("updatevaccine")  Vaccines vac,Errors error,Model model) {
		if(error.hasErrors()) {
			return "update-vaccine-form";
		}else {
		vaccineServices.save(vac);
		model.addAttribute("updateresult", "Updated successfully");
		return "update-vaccine-form";}
	}

	@GetMapping("/deletevaccine")
	public String deleteVaccines(@RequestParam("vacid") int id,Model model) {
		vaccineServices.deleteById(id);
		model.addAttribute("delete","Deletes successfully");
		return "list-pet-vaccine";
	}

	@GetMapping("/getvaccine")
	public String getVaccines(@RequestParam("vacid") int id, Model model) {
		Vaccines vaccine = vaccineServices.findById(id);
		model.addAttribute("findvaccinebyid", vaccine);
		return "find-vaccine-by-id";
	}
	@GetMapping("/getvaccineidbyvaccinedate")
	public String getPetVaccine(@RequestParam("id") int id,Model model) {
		VaccinesVaccineDateDto dto=vaccineServices.getVaccineAndVaccineDate(id);
		model.addAttribute("getVaccine",dto.getVaccines());
		model.addAttribute("vaccinedatelist",dto.getVaccineDateList());
		return "vaccine-vaccinedate";
	}

}
