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

import com.chainsys.petwelfaresystem.Services.PetRecordServices;
import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.model.PetRecords;

@Controller
@RequestMapping("/petrecord")
public class PetRecordsController {
	@Autowired
	PetRecordServices petRecordServices;
	@GetMapping("/list")
	public String getFindAllPetRecord(Model model) {
		List<PetRecords> listPetRecord = petRecordServices.getPetRecords();
		model.addAttribute("allpetrecords", listPetRecord);
		return "list-petrecord";
	}

	@GetMapping("/addformpetrecord")
	public String showAddPetRecord(Model model) {
		PetRecords petRecord = new PetRecords();
		model.addAttribute("addpetrecord", petRecord);
		return "add-petrecord-form";
	}

	@PostMapping("/addnewpetrecord")
	public String addNewPetRecords(@ModelAttribute("addpetrecord") PetRecords petRecord) {
		petRecordServices.save(petRecord);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/updateformpetrecord")
	public String showUpdatePetRecord(@RequestParam("prid") int id,@RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey=new PetRecordsCompositeKey(id,disid);
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute("updatepetrecord", petRecord);
		return "update-petrecord-form";
	}

	@PostMapping("/updatenewrecord")
	public String UpdatePetRecords(@ModelAttribute("updatepetrecord") PetRecords petRecord) {
		petRecordServices.save(petRecord);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/deletepetrecord")
	public String deletePetRecords(@RequestParam("prid") int id,@RequestParam("diseaseid") int disid) {
		PetRecordsCompositeKey petRecordsCompositeKey=new PetRecordsCompositeKey(id,disid);
		petRecordServices.deleteById(petRecordsCompositeKey);
		return "redirect:/petrecord/list";
	}

	@GetMapping("/getpetrecord")
	public String getPetRecords(@RequestParam("prid") int id,@RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey=new PetRecordsCompositeKey(id,disid);
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute("findpetrecordbyid", petRecord);
		return "find-petrecord-by-id";
	}

}
