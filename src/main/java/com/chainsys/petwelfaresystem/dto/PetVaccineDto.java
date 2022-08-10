package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.VaccineDate;

public class PetVaccineDto {
	private Pet pet;
	private List<VaccineDate> vaccineDateList=new ArrayList<>();
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	public List<VaccineDate> getVaccineDateList() {
		return vaccineDateList;
	}
	public void addVaccineDate(VaccineDate vaccineDate) {
		vaccineDateList.add(vaccineDate);
	}
}
