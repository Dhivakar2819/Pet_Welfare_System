package com.chainsys.petwelfaresystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="diseases")
public class Disease {
	@Id
	@Column(name="disease_id")
	private int  id;
	@Column(name="disease_name")
	private String diseaseName;
	private String medicine;
	@OneToMany(fetch=FetchType.LAZY)
	@JoinColumn(name="disease_id",nullable=false, insertable=false, updatable=false)
	private Pet pet;
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDiseaseName() {
		return diseaseName;
	}
	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	
}
