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

import com.chainsys.petwelfaresystem.Services.VaccineDateServices2;
import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate2;

@Controller
@RequestMapping("/vaccinedate2")
public class VaccineDateController2 {
	@Autowired
	VaccineDateServices2 vdate;

	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<VaccineDate2> list = vdate.getVaccineDate();
		model.addAttribute("allvdate", list);
		return "list-vaccinedate";
	}
	

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		VaccineDate2 vd = new VaccineDate2();
		model.addAttribute("addvdate", vd);
		return "add-vaccinedate-form";
	}

	@PostMapping("/add")
	public String addNewVaccineDate(@ModelAttribute("addvdate") VaccineDate2 vd) {
		vdate.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vdc=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate2> vda = vdate.findById(vdc);
		model.addAttribute("updatevdate", vda);
		return "update-vaccinedate-form";
	}

	@PostMapping("/update")
	public String UpdateVaccineDate(@ModelAttribute("updatevdate") VaccineDate2 vd) {
		vdate.save(vd);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/delete")
	public String deleteVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid) {
		VaccineDateCompositeKey vdc=new VaccineDateCompositeKey(id, vid);
		vdate.deleteById(vdc);
		return "redirect:/vaccinedate/list";
	}

	@GetMapping("/getbyid")
	public String getVaccineDate(@RequestParam("id") int id,@RequestParam("vid")int vid, Model model) {
		VaccineDateCompositeKey vdc=new VaccineDateCompositeKey(id, vid);
		Optional<VaccineDate2> vd = vdate.findById(vdc);
		model.addAttribute("findvdatebyid", vd);
		return "find-vaccinedate-by-id";
	}

}
