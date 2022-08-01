package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;


import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.Pet;

public class PetAndDiseaseDTO {
	private Disease disease;
	private Pet pet;
	private List<Disease> dislist=new ArrayList<Disease>();
	private List<Pet> petlist=new ArrayList<Pet>();
	public Disease getDisease() {
		return disease;
	}
	public void setDisease(Disease disease) {
		this.disease = disease;
	}
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	public List<Pet> getPetlist() {
		return petlist;
	}
	public void addPet(Pet pet) {
		petlist.add(pet);
	}
	public List<Disease> getDislist(){
		return dislist;
	}
	public void addDisease(Disease disease) {
		dislist.add(disease);
	}
}
