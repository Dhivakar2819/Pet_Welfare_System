package com.chainsys.petwelfaresystem.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="pets")
public class Pet {
	@Id
	@Column(name="pet_id")
	private int id;
	@Column(name="user_id")
	private int userId;
	@Column(name="breed_id")
	private int breedId;
	@Column(name="pet_type")
	private String petType;
	@Column(name="pet_name")
	private String petName;
	private Date dob;
	private String gender;
	@Column(name="date_of_ownership")
	private Date dateofOwnership;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="breed_id",nullable=false, insertable=false, updatable=false)
	private Breed breed;
	
	public Breed getBreed() {
		return breed;
	}
	public void setBreed(Breed breed) {
		this.breed = breed;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBreedId() {
		return breedId;
	}
	public void setBreedId(int breedId) {
		this.breedId = breedId;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDateofOwnership() {
		return dateofOwnership;
	}
	public void setDateofOwnership(Date dateofOwnership) {
		this.dateofOwnership = dateofOwnership;
	}
	
}
