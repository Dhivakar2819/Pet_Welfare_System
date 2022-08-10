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

import com.chainsys.petwelfaresystem.dto.PetRecordDiseaseDto;
import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.services.DiseaseServices;

@Controller
@RequestMapping("/disease")
public class DiseaseController {
	@Autowired
	DiseaseServices diseaseService;
	@GetMapping("/diseaselist")
	public String getFindDisease(Model model) {
		List<Disease> listDisease=diseaseService.getDisease();
		model.addAttribute("alldisease",listDisease);
		return "list-disease";
	}
	@GetMapping("/admindiseaselist")
	public String getFindDiseaseAdmin(Model model) {
		List<Disease> listDisease=diseaseService.getDisease();
		model.addAttribute("alldisease",listDisease);
		return "admin-list-disease";
	}
	@GetMapping("/addformdisease")
	public String showAddDisease(Model model) {
		Disease disease = new Disease();
		model.addAttribute("adddisease", disease);
		return "add-disease-form";
	}

	@PostMapping("/addnewdisease")
	public String addNewDisease(@Valid @ModelAttribute("adddisease") Disease disease,Errors error) {
		if(error.hasErrors()) {
			return "add-disease-form";
		}
		else {
		diseaseService.save(disease);
		return "redirect:/disease/admindiseaselist";}
	}
	
	@GetMapping("/updateformdisease")
	public String showUpdateDisease(@RequestParam("disid") int id, Model model ){
		Disease disease=diseaseService.findById(id);
		model.addAttribute("updatedisease", disease);
		return "update-disease-form";
	}

	@PostMapping("/updatenewdisease")
	public String updateDisease(@Valid @ModelAttribute("updatedisease") Disease disease,Errors error) {
		if(error.hasErrors()) {
			return "update-disease-form";
		}
		else {
		diseaseService.save(disease);
		return "redirect:/disease/admindiseaselist";}
	}
	
	
	@GetMapping("/deletedisease")
	public String deleteDisease(@RequestParam("disid") int id) {
		diseaseService.deleteById(id);
		return "redirect:/disease/diseaselist";
	}
	
	@GetMapping("/getdisease")
	public String getDisease(@RequestParam("disid") int id,Model model)
	{
		Disease dis=diseaseService.findById(id);
		model.addAttribute("finddiseasebyid",dis);
		return "find-disease-by-id";
	}
	@GetMapping("/getdiseasepetrecord")
	public String getDiseaseIdInPetRecord(@RequestParam("id") int id,Model model) {
		PetRecordDiseaseDto dto=diseaseService.getPetRecordDiseaseDto(id);
		model.addAttribute("getdisease",dto.getDisease());
		model.addAttribute("diseaselist",dto.getPetRecords());
		return "diseaseid-petrecords";
	}
	
}
