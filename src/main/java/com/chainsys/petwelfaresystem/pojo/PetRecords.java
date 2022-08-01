package com.chainsys.petwelfaresystem.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="petrecords")
public class PetRecords {
	@Id
	private int pet_id;
	private int disease_id;
	private Date date_observ;
	private String observation;
	private Date recover_date;
	
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public int getDisease_id() {
		return disease_id;
	}
	public void setDisease_id(int disease_id) {
		this.disease_id = disease_id;
	}
	public Date getDate_observ() {
		return date_observ;
	}
	public void setDate_observ(Date date_observ) {
		this.date_observ = date_observ;
	}
	public String getObservation() {
		return observation;
	}
	public void setObservation(String observation) {
		this.observation = observation;
	}
	public Date getRecover_date() {
		return recover_date;
	}
	public void setRecover_date(Date recover_date) {
		this.recover_date = recover_date;
	}
}
