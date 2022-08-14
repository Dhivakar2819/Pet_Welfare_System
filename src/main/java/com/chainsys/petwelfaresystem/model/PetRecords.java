package com.chainsys.petwelfaresystem.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;

@Entity
@Table(name="petrecords")
@IdClass(PetRecordsCompositeKey.class)
public class PetRecords {
	@Id
	@Column(name="pet_id")
	@NotNull
	@Range(min=1,message="*Greater then zero")
	private int petId;
	@Id
	@Column(name="disease_id")
	private int diseaseId;
	@Column(name="date_observ")
	private String dateObserv;
	@Column(name="observation")
	@NotBlank(message = "*Observation can't be Empty")
	private String observation;
	@Column(name="recover_date")
	private String recoverDate;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="disease_id",nullable=false,insertable=false,updatable=false)
	private Disease disease;
	
	public Disease getDisease() {
		return disease;
	}
	public void setDisease(Disease disease) {
		this.disease = disease;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="pet_id",nullable=false,insertable=false,updatable=false)
	private Pet pet;
	
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
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
	public String getDateObserv() {
		return dateObserv;
	}
	public void setDateObserv(String dateObserv) {
		this.dateObserv = dateObserv;
	}
	public String getObservation() {
		return observation;
	}
	public void setObservation(String observation) {
		this.observation = observation;
	}
	public String getRecoverDate() {
		return recoverDate;
	}
	public void setRecoverDate(String recoverDate) {
		this.recoverDate = recoverDate;
	}
	
}
