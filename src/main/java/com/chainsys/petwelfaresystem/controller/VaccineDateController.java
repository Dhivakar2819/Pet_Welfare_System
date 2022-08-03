package com.chainsys.petwelfaresystem.controller;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.Services.VaccineDateServices;
import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate;

@Controller
@RequestMapping("/vaccinedate")
public class VaccineDateController {
	@Autowired
	VaccineDateServices vaccineDateServices;

	@GetMapping("/vaccinedatelist")
	public String getFindAllVaccineDate(Model model) {
		List<VaccineDate> list = vaccineDateServices.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}
	

	@GetMapping("/addformvaccinedate")
	public String showAddVaccineDate(Model model) {
		VaccineDate vaccineDate = new VaccineDate();
		model.addAttribute("addvdate", vaccineDate);
		return "add-vaccinedate-form";
	}

	@PostMapping("/addnewvaccinedate")
	public String addNewVaccineDate(@ModelAttribute("addvdate") VaccineDate vaccineDate) {
		vaccineDateServices.save(vaccineDate);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/updateformvaccinedate")
	public String showUpdateVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("updatevdate", vaccineDate);
		return "update-vaccinedate-form";
	}

	@PostMapping("/updatenewvaccinedate")
	public String UpdateVaccineDate(@ModelAttribute("updatevdate") VaccineDate vaccineDate) {
		vaccineDateServices.save(vaccineDate);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/deletevaccinedate")
	public String deleteVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		vaccineDateServices.deleteById(vaccineDateCompositeKey);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/getbyidvaccinedate")
	public String getVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("findvdatebyid", vaccineDate);
		return "find-vaccinedate-by-id";
	}

}
