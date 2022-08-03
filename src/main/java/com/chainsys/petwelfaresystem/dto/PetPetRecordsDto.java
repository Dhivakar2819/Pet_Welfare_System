package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.PetRecords;

public class PetPetRecordsDto {
	private Pet pet;
	private List<PetRecords> petRecord=new ArrayList<>();
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	public List<PetRecords> getPetRecord() {
		return petRecord;
	}
	public void addPetRecords(PetRecords petRecords) {
		petRecord.add(petRecords);
	}
}
