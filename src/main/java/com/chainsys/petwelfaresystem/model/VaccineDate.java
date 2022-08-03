package com.chainsys.petwelfaresystem.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;

@Entity
@Table(name="vaccine_date")
@IdClass(VaccineDateCompositeKey.class)
public class VaccineDate {
	@Id
	@Column(name="pet_id")
	private int petId;
	@Id
	@Column(name="vaccine_id")
	private int vaccineId;
	@Column(name="vaccine_date")
	private Date vaccineDate;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="pet_id",nullable=false, insertable=false, updatable=false)
	private Pet pet;
	
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="vaccine_id",nullable=false, insertable=false, updatable=false)
	private Vaccines vaccines;
	
	public Vaccines getVaccines() {
		return vaccines;
	}
	public void setVaccines(Vaccines vaccines) {
		this.vaccines = vaccines;
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
	public Date getVaccineDate() {
		return vaccineDate;
	}
	public void setVaccineDate(Date vaccineDate) {
		this.vaccineDate = vaccineDate;
	}
	
	
}
