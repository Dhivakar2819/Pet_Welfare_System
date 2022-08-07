package com.chainsys.petwelfaresystem.controller;

import java.util.ArrayList;
import java.util.Iterator;
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

import com.chainsys.petwelfaresystem.Services.DiseaseServices;
import com.chainsys.petwelfaresystem.Services.PetRecordServices;
import com.chainsys.petwelfaresystem.Services.PetServices;
import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.dto.PetPetRecordsDto;
import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.PetRecords;
import com.chainsys.petwelfaresystem.repository.DiseaseRepositroy;

@Controller
@RequestMapping("/petrecord")
public class PetRecordsController {
	@Autowired
	PetRecordServices petRecordServices;
	@Autowired
	PetServices petServices;
	@Autowired
	DiseaseServices diseaseServicesS;
	@Autowired
	DiseaseRepositroy diseaseRepository;

	@GetMapping("/petrecordlist")
	public String getFindAllPetRecord(Model model) {
		List<PetRecords> listPetRecord = petRecordServices.getPetRecords();
		List<Disease> lDiseaselist = diseaseServicesS.getDisease();
		List<PetRecords> petRecordsList=petRecordServices.getPetRecords();
		Iterator<PetRecords>itrpet=petRecordsList.iterator();
		Iterator<Disease>itr=lDiseaselist.iterator();
		List<Integer> diseasePrice=new ArrayList<>();
		while(itr.hasNext()){
			while(itrpet.hasNext()){
			if(itr.next().getId()==itrpet.next().getDiseaseId()){
				diseasePrice.add(itr.next().getPrice());
			}
			}
		}
		model.addAttribute("diseasePrice",diseasePrice);
		model.addAttribute("allpetrecords", listPetRecord);
		return "list-petrecord";
	}

	@GetMapping("/addformpetrecord")
	public String showAddPetRecord(Model model) {
		PetRecords petRecord = new PetRecords();
		model.addAttribute("disease", diseaseRepository.findAll());
		model.addAttribute("addpetrecord", petRecord);
		return "add-petrecord-form";
	}

	@PostMapping("/addnewpetrecord")
	public String addNewPetRecords(@ModelAttribute("addpetrecord") PetRecords petRecord) {
		petRecordServices.save(petRecord);
		return "redirect:/petrecord/petrecordlist";
	}

	@GetMapping("/updateformpetrecord")
	public String showUpdatePetRecord(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		model.addAttribute("disease", diseaseRepository.findAll());
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute("updatepetrecord", petRecord);
		return "update-petrecord-form";
	}

	@PostMapping("/updatenewrecord")
	public String UpdatePetRecords(@ModelAttribute("updatepetrecord") PetRecords petRecord) {
		petRecordServices.save(petRecord);
		return "redirect:/petrecord/petrecordlist";
	}

	@GetMapping("/deletepetrecord")
	public String deletePetRecords(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		petRecordServices.deleteById(petRecordsCompositeKey);
		return "redirect:/petrecord/petrecordlist";
	}

	@GetMapping("/getpetrecord")
	public String getPetRecords(@RequestParam("prid") int id, @RequestParam("diseaseid") int disid, Model model) {
		PetRecordsCompositeKey petRecordsCompositeKey = new PetRecordsCompositeKey(id, disid);
		Optional<PetRecords> petRecord = petRecordServices.findById(petRecordsCompositeKey);
		model.addAttribute("findpetrecordbyid", petRecord);
		return "find-petrecord-by-id";
	}

	@GetMapping("/getpetidinpetrecords")
	public String GetPetInPetRecords(@RequestParam("id") int id, Model model) {
		PetPetRecordsDto dto = petServices.getPetPetRecordsDto(id);
		model.addAttribute("getpet", dto.getPet());
		model.addAttribute("petrecordslist", dto.getPetRecord());
		return "pet-petrecords";
	}

}
