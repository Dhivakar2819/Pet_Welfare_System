package com.chainsys.petwelfaresystem.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;

@Entity
@Table(name="vaccine_date")
@IdClass(VaccineDateCompositeKey.class)
public class VaccineDate2 {
	@Id
	private int pet_id;
	@Id
	private int vaccine_id;
	private Date vaccine_date;
	
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public int getVaccine_id() {
		return vaccine_id;
	}
	public void setVaccine_id(int vaccine_id) {
		this.vaccine_id = vaccine_id;
	}
	public Date getVaccine_date() {
		return vaccine_date;
	}
	public void setVaccine_date(Date vaccine_date) {
		this.vaccine_date = vaccine_date;
	}
}
