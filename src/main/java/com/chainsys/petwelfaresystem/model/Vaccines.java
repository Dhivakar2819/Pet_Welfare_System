package com.chainsys.petwelfaresystem.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="vaccines")
public class Vaccines {
	@Id
	@Column(name="vaccine_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "vaccine_id")
    @SequenceGenerator(name = "vaccine_id", sequenceName = "vaccine_id",  allocationSize = 1)
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
	@OneToMany(mappedBy="vaccines",fetch=FetchType.LAZY)
	private List<VaccineDate> vaccineDate;
	
	public List<VaccineDate> getVaccineDate() {
		return vaccineDate;
	}
	public void setVaccineDate(List<VaccineDate> vaccineDate) {
		this.vaccineDate = vaccineDate;
	}

	
}
