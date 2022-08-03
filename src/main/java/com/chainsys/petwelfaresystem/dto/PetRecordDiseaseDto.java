package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.PetRecords;

public class PetRecordDiseaseDto {
	@Autowired
	private Disease disease;
	private List<PetRecords> petRecords=new ArrayList<PetRecords>();
	public Disease getDisease() {
		return disease;
	}
	public void setDisease(Disease disease) {
		this.disease = disease;
	}
	public List<PetRecords> getPetRecords() {
		return petRecords;
	}
	public void addPetRecords(PetRecords petRecord) {
		petRecords.add(petRecord);
	}
}
