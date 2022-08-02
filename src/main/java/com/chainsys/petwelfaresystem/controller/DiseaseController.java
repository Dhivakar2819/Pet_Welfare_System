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

import com.chainsys.petwelfaresystem.Services.DiseaseServices;
import com.chainsys.petwelfaresystem.model.Disease;

@Controller
@RequestMapping("/disease")
public class DiseaseController {
	@Autowired
	DiseaseServices diseaseService;
	@GetMapping("/list")
	public String getFindDisease(Model model) {
		List<Disease> listDisease=diseaseService.getDisease();
		model.addAttribute("alldisease",listDisease);
		return "list-disease";
	}
	
	@GetMapping("/addformdisease")
	public String showAddDisease(Model model) {
		Disease disease = new Disease();
		model.addAttribute("adddisease", disease);
		return "add-disease-form";
	}

	@PostMapping("/addnewdisease")
	public String addNewDisease(@ModelAttribute("adddisease") Disease disease) {
		diseaseService.save(disease);
		return "redirect:/disease/list";
	}
	
	@GetMapping("/updateformdisease")
	public String showUpdateDisease(@RequestParam("disid") int id, Model model ){
		Disease disease=diseaseService.findById(id);
		model.addAttribute("updatedisease", disease);
		return "update-disease-form";
	}

	@PostMapping("/updatenewdisease")
	public String UpdateDisease(@ModelAttribute("updatedisease") Disease disease) {
		diseaseService.save(disease);
		return "redirect:/disease/list";
	}
	
	
	@GetMapping("/deletedisease")
	public String deleteDisease(@RequestParam("disid") int id) {
		diseaseService.deleteById(id);
		return "redirect:/disease/list";
	}
	
	@GetMapping("/getdisease")
	public String getDisease(@RequestParam("disid") int id,Model model)
	{
		Disease dis=diseaseService.findById(id);
		model.addAttribute("finddiseasebyid",dis);
		return "find-disease-by-id";
	}
	
	
}
