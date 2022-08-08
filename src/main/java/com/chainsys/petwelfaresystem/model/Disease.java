package com.chainsys.petwelfaresystem.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="diseases")
public class Disease {
	@Id
	@Column(name="disease_id")
	@NotNull
	@Range(min=1,message="*Greater then zero")
	private int  id;
	@Column(name="disease_name")
	@Size(max = 20, min = 3, message = "*Disease name length should be 3 to 20")
	@NotBlank(message = "*Disease name can't be Empty")
	private String diseaseName;
	@Size(max = 20, min = 3, message = "*Medicine length should be 3 to 20")
	@NotBlank(message = "*Medicine can't be Empty")
	private String medicine;
	@NotNull
	@Range(min=1,message="*Greater then zero")
	private int price;
	@OneToMany(mappedBy="disease",fetch=FetchType.LAZY)
	private List<PetRecords> petRecords;
	
	public List<PetRecords> getPetRecords() {
		return petRecords;
	}
	public void setPetRecords(List<PetRecords> petRecords) {
		this.petRecords = petRecords;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
