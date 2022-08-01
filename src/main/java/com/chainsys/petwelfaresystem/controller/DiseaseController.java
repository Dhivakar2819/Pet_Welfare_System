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
import com.chainsys.petwelfaresystem.pojo.Disease;

@Controller
@RequestMapping("/disease")
public class DiseaseController {
	@Autowired
	DiseaseServices disease;
	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<Disease> list=disease.getDisease();
		model.addAttribute("alldisease",list);
		return "list-disease";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Disease dis = new Disease();
		model.addAttribute("adddisease", dis);
		return "add-disease-form";
	}

	@PostMapping("/add")
	public String addNewDisease(@ModelAttribute("adddisease") Disease dis) {
		disease.save(dis);
		return "redirect:/disease/list";
	}
	
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("disid") int id, Model model ){
		Disease dis=disease.findById(id);
		model.addAttribute("updatedisease", dis);
		return "update-disease-form";
	}

	@PostMapping("/update")
	public String UpdateDisease(@ModelAttribute("updatedisease") Disease dis) {
		disease.save(dis);
		return "redirect:/disease/list";
	}
	
	
	@GetMapping("/delete")
	public String deleteDisease(@RequestParam("disid") int id) {
		disease.deleteById(id);
		return "redirect:/disease/list";
	}
	
	@GetMapping("/getdisease")
	public String getDisease(@RequestParam("disid") int id,Model model)
	{
		Disease dis=disease.findById(id);
		model.addAttribute("finddiseasebyid",dis);
		return "find-disease-by-id";
	}
	
	
}
