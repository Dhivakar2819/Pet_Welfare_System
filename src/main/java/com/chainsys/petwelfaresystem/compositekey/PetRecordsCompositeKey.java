package com.chainsys.petwelfaresystem.compositekey;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;

public class PetRecordsCompositeKey implements Serializable{
	@Column(name="pet_id")
	private int id;
	@Column(name="disease_id")
	private int diseaseId;
	PetRecordsCompositeKey(){}
	public PetRecordsCompositeKey(int id,int diseaseId) {
		this.id=id;
		this.diseaseId=diseaseId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDiseaseId() {
		return diseaseId;
	}
	public void setDiseaseId(int diseaseId) {
		this.diseaseId = diseaseId;
	}
	
}
