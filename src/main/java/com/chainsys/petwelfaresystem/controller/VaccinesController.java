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
	private static final String ADDFORM="add-vaccine-form";
	private static final String UPDATEFORM="update-vaccine-form";

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
		return ADDFORM;
	}

	@PostMapping("/addnewvaccine")
	public String addNewVaccine( @ModelAttribute("addvaccine")  Vaccines vac,Model model) {
		
		try {
			vaccineServices.save(vac);
		model.addAttribute("result", "Added successfully");
		return ADDFORM;}
		catch(Exception er) {
			model.addAttribute("result", "Failed");
			return ADDFORM;
		}
	}

	@GetMapping("/updateformvaccine")
	public String showUpdateVaccine(@RequestParam("vacid") int id, Model model) {
		Vaccines vaccine = vaccineServices.findById(id);
		model.addAttribute("updatevaccine", vaccine);
		return UPDATEFORM;
	}

	@PostMapping("/updatevaccines")
	public String updateVaccines(@Valid @ModelAttribute("updatevaccine")  Vaccines vac,Errors error,Model model) {
		if(error.hasErrors()) {
			return UPDATEFORM;
		}else {try {
		vaccineServices.save(vac);
		model.addAttribute("updateresult", "Updated successfully");
		return UPDATEFORM;}
		catch(Exception er) {
			model.addAttribute("updateresult", "Failed");
			return ADDFORM;
		}
	}
	}

	@GetMapping("/deletevaccine")
	public String deleteVaccines(@RequestParam("vacid") int id,Model model) {
		vaccineServices.deleteById(id);
		return "redirect:/vaccine/adminvaccinelist";
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
