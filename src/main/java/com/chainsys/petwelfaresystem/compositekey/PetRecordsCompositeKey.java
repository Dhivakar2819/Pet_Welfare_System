package com.chainsys.petwelfaresystem.compositekey;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class PetRecordsCompositeKey implements Serializable{
	@Column(name="pet_id")
	private int petId;
	@Column(name="disease_id")
	private int diseaseId;
	PetRecordsCompositeKey(){}
	public PetRecordsCompositeKey(int id,int diseaseId) {
		this.petId=id;
		this.diseaseId=diseaseId;
	}
	public int getPetId() {
		return petId;
	}
	public void setPetId(int petId) {
		this.petId = petId;
	}
	public int getDiseaseId() {
		return diseaseId;
	}
	public void setDiseaseId(int diseaseId) {
		this.diseaseId = diseaseId;
	}
	
}
