package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.petwelfaresystem.model.Breed;
import com.chainsys.petwelfaresystem.model.Pet;

public class PetBreedDTO {
	@Autowired
	private Breed breed;
	
	private List<Pet> petlist=new ArrayList<>();
	public Breed getBreed() {   
		return breed;
	}
	public void setBreed(Breed breed) {
		this.breed = breed;
	}
	public List<Pet> getPetlist() {
		return petlist;
	}
	public void addPet(Pet pet) {
		petlist.add(pet);
	}
	
}
