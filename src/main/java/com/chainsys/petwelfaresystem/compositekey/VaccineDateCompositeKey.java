package com.chainsys.petwelfaresystem.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class VaccineDateCompositeKey implements Serializable{
	@Column(name="pet_id")
	private int petId;
	@Column(name="vaccine_id")
	private int vaccineId;
	VaccineDateCompositeKey() {
	}
	public VaccineDateCompositeKey(int petId,int vaccineId) {
		this.petId=petId;
		this.vaccineId=vaccineId;
	}
	public int getPetId() {
		return petId;
	}
	public void setPetId(int petId) {
		this.petId = petId;
	}
	public int getVaccineId() {
		return vaccineId;
	}
	public void setVaccineId(int vaccineId) {
		this.vaccineId = vaccineId;
	}
	
}
