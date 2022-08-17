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
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.services.PetServices;
import com.chainsys.petwelfaresystem.services.VaccineDateServices;
import com.chainsys.petwelfaresystem.services.VaccinesServices;

@Controller
@RequestMapping("/vaccinedate")
public class VaccineDateController {
	@Autowired
	VaccineDateServices vaccineDateServices;
	@Autowired
	VaccinesServices vaccineService;
	@Autowired
	private PetServices petServices;
	private static final String ADDFORM="add-vaccinedate-form";
	private static final String UPDATEFORM="update-vaccinedate-form";
	@GetMapping("/vaccinedatelist")
	public String getFindAllVaccineDate(Model model) {
		List<VaccineDate> list = vaccineDateServices.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}
	

	@GetMapping("/addformvaccinedate")
	public String showAddVaccineDate(@RequestParam("id") int id,Model model) {
		VaccineDate vaccineDate = new VaccineDate();
		Pet pet=petServices.findById(id);
		model.addAttribute("vaccine",vaccineService.getAllVaccines());
		model.addAttribute("addvdate", vaccineDate);
		model.addAttribute("petId",pet.getPetId());
		vaccineDate.setPetId(id);
		return ADDFORM;
	}

	@PostMapping("/addnewvaccinedate")
	public String addNewVaccineDate(@Valid @ModelAttribute("addvdate")  VaccineDate vaccineDate,Errors error,Model model) {
		if(error.hasErrors()) {
			return "ADDFORM";
		}
		else {
		model.addAttribute("petId", vaccineDate.getPetId());
		vaccineDateServices.save(vaccineDate);
		model.addAttribute("addresult", "Added successfully");
		return "ADDFORM";}
	}

	@GetMapping("/updateformvaccinedate")
	public String showUpdateVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		model.addAttribute("vaccine",vaccineService.getAllVaccines());
		model.addAttribute("petId",vaccineDateCompositeKey.getPetId());
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("updatevdate", vaccineDate);
		vaccineDateCompositeKey.setPetId(id);
		return UPDATEFORM;
	}

	@PostMapping("/updatenewvaccinedate")
	public String updateVaccineDate(@Valid @ModelAttribute("updatevdate")  VaccineDate vaccineDate,Errors error,Model model) {
		if(error.hasErrors()) {
			return UPDATEFORM;
		}
		else {
		model.addAttribute("petId", vaccineDate.getPetId());	
		vaccineDateServices.save(vaccineDate);
		model.addAttribute("updateresult", "Updated successfully");
		return UPDATEFORM;}
	}

	@GetMapping("/deletevaccinedate")
	public String deleteVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		vaccineDateServices.deleteById(vaccineDateCompositeKey);
		return "redirect:/pet/getvaccinebypetid?id="+vaccineDateCompositeKey.getPetId();
	}

	@GetMapping("/getbyidvaccinedate")
	public String getVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vaccineDateCompositeKey=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate> vaccineDate = vaccineDateServices.findById(vaccineDateCompositeKey);
		model.addAttribute("findvdatebyid", vaccineDate);
		return "find-vaccinedate-by-id";
	}

}
