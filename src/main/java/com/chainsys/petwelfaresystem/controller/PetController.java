package com.chainsys.petwelfaresystem.controller;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.petwelfaresystem.dto.PetVaccineDto;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.Vaccines;
import com.chainsys.petwelfaresystem.services.BreedServices;
import com.chainsys.petwelfaresystem.services.PetServices;
import com.chainsys.petwelfaresystem.services.UsersDetailServices;
import com.chainsys.petwelfaresystem.services.VaccinesServices;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Autowired
	PetServices petServices;
	@Autowired
	BreedServices breedServices;
	@Autowired
	UsersDetailServices userDetailServices;
	@Autowired
	VaccinesServices vaccineServices;
	private static final String USERID="userId";
	private static final String ADDFORM="add-pet-form";
	private static final String UPDATEFORM="update-pet-form";
	
	@GetMapping("/petlist")
	public String getFindAllPet(Model model) {
		List<Pet> pet = petServices.getPet();
		model.addAttribute("allPets", pet);
		return "list-pet";
	}

	@GetMapping("/addpet")
	public String showAddPet(@RequestParam("userId") int id, Model model) {
		Pet pet = new Pet();
		model.addAttribute("breed", breedServices.getAllBreed());
		model.addAttribute("addpet", pet);
		pet.setUserId(id);
		model.addAttribute(USERID, pet.getUserId());
		model.addAttribute("petId", pet.getPetId());
		return ADDFORM;
	}

	@PostMapping("/addnewpet")
	public String addNewPet(@ModelAttribute("addpet")  Pet pet, Model model) {
		try {
			model.addAttribute(USERID, pet.getUserId());
			petServices.save(pet);
			model.addAttribute("result", "Pet records added successfully");
			return ADDFORM;
		}catch(Exception er) {
			return ADDFORM;
		}
	}

	@GetMapping("/updateformpet")
	public String showUpdatePet(@RequestParam("petid") int id, Model model) {
		Pet pet = petServices.findById(id);
		model.addAttribute("breed", breedServices.getAllBreed());
		model.addAttribute("updatepet", pet);
		model.addAttribute(USERID, pet.getUserId());
		return UPDATEFORM;
	}

	@PostMapping("/updatepets")
	public String updatePet(@ModelAttribute("updatepet")  Pet pet, Model model) {
		try {
			petServices.save(pet);
			model.addAttribute(USERID, pet.getUserId());
			return UPDATEFORM;
		}catch(Exception er) {
			return UPDATEFORM; 
		}
	}

	@GetMapping("/deletepet")
	public String deletePet(@RequestParam("petid") int id, Model model) {
		Pet pet = petServices.findById(id);
		petServices.deleteById(id);
		return "redirect:/usersdetail/getuserpet?id=" + pet.getUserId();
	}

	@GetMapping("/getpet")
	public String getpet(@RequestParam("petid") int id, Model model) {
		Pet pet = petServices.findById(id);
		model.addAttribute("findpetbyid", pet);
		return "find-pet-by-id";
	}

	@GetMapping("/getvaccinebypetid")
	public String getPetDisease(@RequestParam("id") int id, Model model) {
		PetVaccineDto dto = petServices.getPetAndVaccine(id);
		model.addAttribute("getpetid", dto.getPet());
		model.addAttribute("vaccinelist", dto.getVaccineDateList());
		model.addAttribute("petId", dto.getPet().getPetId());
		model.addAttribute(USERID, dto.getPet().getUserId());
		List<Vaccines> vaccine= vaccineServices.getAllVaccines();
		List<Vaccines> vaccinelist=new ArrayList<>();
			for(int i=0;i<dto.getVaccineDateList().size();i++) {
				for(int j=0;j<vaccine.size();j++) {
					if(dto.getVaccineDateList().get(i).getVaccineId()==vaccine.get(j).getVaccineId()) {
						vaccinelist.add(vaccine.get(j));
						break;
					}
				}
			}
		dto.getPet().setUserId(id);
		model.addAttribute("vaccineName", vaccinelist);
		return "list-pet-vaccine";
	}
}
