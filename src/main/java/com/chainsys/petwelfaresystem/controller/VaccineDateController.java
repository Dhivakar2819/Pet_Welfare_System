package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import java.util.Optional;

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

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.repository.VaccineRepository;
import com.chainsys.petwelfaresystem.services.VaccineDateServices;
import com.chainsys.petwelfaresystem.services.VaccinesServices;

@Controller
@RequestMapping("/vaccinedate")
public class VaccineDateController {
	@Autowired
	VaccineDateServices vaccineDateServices;
	@Autowired
	VaccinesServices vaccineService;
	@GetMapping("/vaccinedatelist")
	public String getFindAllVaccineDate(Model model) {
		List<VaccineDate> list = vaccineDateServices.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}
	

	@GetMapping("/addformvaccinedate")
	public String showAddVaccineDate(Model model) {
		VaccineDate vaccineDate = new VaccineDate();
		model.addAttribute("vaccine",vaccineService.getAllVaccines());
		model.addAttribute("addvdate", vaccineDate);
		return "add-vaccinedate-form";
	}

	@PostMapping("/addnewvaccinedate")
	public String addNewVaccineDate(@Valid @ModelAttribute("addvdate") VaccineDate vaccineDate,Errors error) {
		if(error.hasErrors()) {
			return "add-vaccinedate-form";
		}
		else {
		vaccineDateServices.save(vaccineDate);
		return "redirect:/vaccinedate/vaccinedatelist";}
	}

	@GetMapping("/updateformvaccinedate")
	public String showUpdateVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		model.addAttribute("vaccine",vaccineService.getAllVaccines());
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("updatevdate", vaccineDate);
		return "update-vaccinedate-form";
	}

	@PostMapping("/updatenewvaccinedate")
	public String updateVaccineDate(@Valid @ModelAttribute("updatevdate") VaccineDate vaccineDate,Errors error) {
		if(error.hasErrors()) {
			return "update-vaccinedate-form";
		}
		else {
		vaccineDateServices.save(vaccineDate);
		return "redirect:/vaccinedate/vaccinedatelist";}
	}

	@GetMapping("/deletevaccinedate")
	public String deleteVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		vaccineDateServices.deleteById(vaccineDateCompositeKey);
		return "redirect:/vaccinedate/vaccinedatelist";
	}

	@GetMapping("/getbyidvaccinedate")
	public String getVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("findvdatebyid", vaccineDate);
		return "find-vaccinedate-by-id";
	}

}
