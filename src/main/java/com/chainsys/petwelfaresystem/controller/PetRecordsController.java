package com.chainsys.petwelfaresystem.controller;

import java.util.ArrayList;
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

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.dto.PetPetRecordsDto;
import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.PetRecords;
import com.chainsys.petwelfaresystem.services.DiseaseServices;
import com.chainsys.petwelfaresystem.services.PetRecordServices;
import com.chainsys.petwelfaresystem.services.PetServices;

@Controller
@RequestMapping("/petrecord")
public class PetRecordsController {
	@Autowired
	PetRecordServices petRecordServices;
	@Autowired
	PetServices petServices;
	@Autowired
	DiseaseServices diseaseServices;
	private static final String ADDFORM = "add-petrecord-form";
	private static final String UPDATEFORM = "update-petrecord-form";
	private static final String PETID = "petId";
	private static final String RESULT = "addresult";

	@GetMapping("/petrecordlist")
	public String getFindAllPetRecord(Model model) {
		List<PetRecords> petRecordsList = petRecordServices.getPetRecordsOrderByObservDate();
		model.addAttribute("allpetrecords", petRecordsList);
		model.addAttribute("diseasePrice", petRecordsList);
		return "list-petrecord";
	}

	@GetMapping("/addformpetrecord")
	public String showAddPetRecord(@RequestParam("id") int id, Model model) {
		PetRecords petRecord = new PetRecords();
		Pet pet = petServices.findById(id);
		model.addAttribute("disease", diseaseServices.getAllDisease());
		model.addAttribute("addpetrecord", petRecord);
		model.addAttribute(PETID, petRecord.getPetId());
		petRecord.setPetId(id);
		model.addAttribute(PETID, pet.getPetId());
		return ADDFORM;
	}

	@PostMapping("/addnewpetrecord")
	public String addNewPetRecords(@Valid @ModelAttribute("addpetrecord") PetRecords petRecord, Model model,
			Errors error) {
		if (error.hasErrors()) {
			model.addAttribute(RESULT, "Failed");
			return ADDFORM;
		} else {
			try {
				model.addAttribute(PETID, petRecord.getPetId());
				petRecordServices.save(petRecord);
				model.addAttribute(RESULT, "Added successfully");
				return ADDFORM;
			} catch (Exception er) {
				model.addAttribute(RESULT, "Observ date can't be null");
				return ADDFORM;
			}
		}
	}

	@GetMapping("/updateformpetrecord")
	public String showUpdatePetRecord(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		model.addAttribute("disease", diseaseServices.getAllDisease());
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute(PETID, petRecordsCompositeKey.getPetId());
		model.addAttribute("updatepetrecord", petRecord);
		return UPDATEFORM;
	}

	@PostMapping("/updatenewrecord")
	public String updatePetRecords(@ModelAttribute("updatepetrecord") PetRecords petRecord, Model model) {
		try {
			model.addAttribute(PETID, petRecord.getPetId());
			petRecordServices.save(petRecord);
			model.addAttribute("updateresult", "Updated successfully");
			return UPDATEFORM;
		} catch (Exception er) {
			model.addAttribute("updateresult", "Failed");
			return UPDATEFORM;
		}
	}

	@GetMapping("/deletepetrecord")
	public String deletePetRecords(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		petRecordServices.deleteById(petRecordsCompositeKey);
		model.addAttribute("delete", "Deleted successfully");
		return "redirect:/petrecord/getpetidinpetrecords?id=" + petRecordsCompositeKey.getPetId();
	}

	@GetMapping("/getpetrecord")
	public String getPetRecords(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute("findpetrecordbyid", petRecord);
		return "find-petrecord-by-id";
	}

	@GetMapping("/getpetidinpetrecords")
	public String getPetInPetRecords(@RequestParam("id") int id, Model model) {
		try {
			PetPetRecordsDto dto = petServices.getPetPetRecordsDto(id);
			model.addAttribute("getpet", dto.getPet());
			model.addAttribute("petrecordslist", dto.getPetRecord());
			model.addAttribute("userId", dto.getPet().getUserId());
			List<Disease> disease = diseaseServices.getAllDisease();
			List<Disease> diseaseList = new ArrayList<>();
			int totalAmount = 0;
			for (int i = 0; i < dto.getPetRecord().size(); i++) {
				for (int j = 0; j < disease.size(); j++) {
					if (dto.getPetRecord().get(i).getDiseaseId() == disease.get(j).getId()) {
						diseaseList.add(disease.get(j));
						totalAmount += disease.get(j).getPrice();
					}
				}
			}
			model.addAttribute("totalAmount", totalAmount);
			model.addAttribute("diseasePrice", diseaseList);
			model.addAttribute(PETID, dto.getPet().getPetId());
			return "pet-petrecords";
		} catch (Exception er) {
			model.addAttribute("null", "No record found.Kindly add your pet details");
			return "/petrecords/addformpetrecord";
		}

	}

}
