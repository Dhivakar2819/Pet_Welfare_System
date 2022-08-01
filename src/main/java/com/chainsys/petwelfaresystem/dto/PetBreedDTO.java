package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.petwelfaresystem.pojo.Breed;
import com.chainsys.petwelfaresystem.pojo.Pet;

public class PetBreedDTO {
	private Breed breed;
	private List<Pet> petlist=new ArrayList<Pet>();
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
