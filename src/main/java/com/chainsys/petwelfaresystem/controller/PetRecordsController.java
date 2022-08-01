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

import com.chainsys.petwelfaresystem.Services.PetRecordServices;
import com.chainsys.petwelfaresystem.pojo.PetRecords;

@Controller
@RequestMapping("/petrecord")
public class PetRecordsController {
	@Autowired
	PetRecordServices petrecord;

	@GetMapping("/list")
	public String getFindAll(Model model) {
		List<PetRecords> list = petrecord.getPetRecords();
		model.addAttribute("allpetrecords", list);
		return "list-petrecord";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		PetRecords pr = new PetRecords();
		model.addAttribute("addpetrecord", pr);
		return "add-petrecord-form";
	}

	@PostMapping("/add")
	public String addNewPetRecords(@ModelAttribute("addpetrecord") PetRecords pr) {
		petrecord.save(pr);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("prid") int id, Model model) {
		PetRecords pr = petrecord.findById(id);
		model.addAttribute("updatepetrecord", pr);
		return "update-petrecord-form";
	}

	@PostMapping("/update")
	public String UpdatePetRecords(@ModelAttribute("updatepetrecord") PetRecords pr) {
		petrecord.save(pr);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/delete")
	public String deletePetRecords(@RequestParam("prid") int id) {
		petrecord.deleteById(id);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/getbyid")
	public String getPetRecords(@RequestParam("prid") int id, Model model) {
		PetRecords pr = petrecord.findById(id);
		model.addAttribute("findpetrecordbyid", pr);
		return "find-petrecord-by-id";
	}

}
