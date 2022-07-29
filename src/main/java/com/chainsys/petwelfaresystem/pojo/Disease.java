package com.chainsys.petwelfaresystem.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="disease")
public class Disease {
	@Id
	private int  disease_id;
	private String Disease_name;
	private String medicine;
	public int getDisease_id() {
		return disease_id;
	}
	public void setDisease_id(int disease_id) {
		this.disease_id = disease_id;
	}
	public String getDisease() {
		return Disease_name;
	}
	public void setDisease(String disease) {
		Disease_name = disease;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
}
