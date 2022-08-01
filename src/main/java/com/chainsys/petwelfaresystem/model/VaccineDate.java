package com.chainsys.petwelfaresystem.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="vaccine_date")
public class VaccineDate {
	@Id
	@Column(name="pet_id")
	private int petId;
	@Column(name="vaccine_id")
	private int vaccineId;
	@Column(name="vaccine_date")
	private Date vaccineDate;
	
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
