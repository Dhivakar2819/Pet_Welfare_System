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
import com.chainsys.petwelfaresystem.pojo.VaccineDate;

@Controller
@RequestMapping("/vaccinedate")
public class VaccineDateController {
	@Autowired
	VaccineDateServices vdate;

	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<VaccineDate> list = vdate.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		VaccineDate vd = new VaccineDate();
		model.addAttribute("addvdate", vd);
		return "add-vaccinedate-form";
	}

	@PostMapping("/add")
	public String addNewVaccineDate(@ModelAttribute("addvdate") VaccineDate vd) {
		vdate.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("vdid") int id, Model model) {
		VaccineDate vda = vdate.findById(id);
		model.addAttribute("updatevdate", vda);
		return "update-vaccinedate-form";
	}

	@PostMapping("/update")
	public String UpdateVaccineDate(@ModelAttribute("updatevdate") VaccineDate vd) {
		vdate.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/delete")
	public String deleteVaccineDate(@RequestParam("vdid") int id) {
		vdate.deleteById(id);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/getbyid")
	public String getVaccineDate(@RequestParam("vdid") int id, Model model) {
		VaccineDate vd = vdate.findById(id);
		model.addAttribute("findvdatebyid", vd);
		return "find-vaccinedate-by-id";
	}

}
