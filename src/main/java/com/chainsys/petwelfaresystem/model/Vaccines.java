package com.chainsys.petwelfaresystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vaccines")
public class Vaccines {
	@Id
	@Column(name="vaccine_id")
	private int vaccineId;
	@Column(name="vaccine_name")
	private String vaccineName;
	
	public int getVaccineId() {
		return vaccineId;
	}
	public void setVaccineId(int vaccineId) {
		this.vaccineId = vaccineId;
	}
	public String getVaccineName() {
		return vaccineName;
	}
	public void setVaccineName(String vaccineName) {
		this.vaccineName = vaccineName;
	}
	
}
