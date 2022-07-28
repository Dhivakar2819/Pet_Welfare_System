package com.chainsys.petwellfaresystem.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pets")
public class Pet {
	@Id
	private int pet_id;
	private int user_id;
	private String pet_type;
	private String pet_name;
	private Date dob;
	private String gender;
	private int breed_id;
	private Date date_of_ownership;
	
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public String getPet_type() {
		return pet_type;
	}
	public void setPet_type(String pet_type) {
		this.pet_type = pet_type;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
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
	public int getBreed_id() {
		return breed_id;
	}
	public void setBreed_id(int breed_id) {
		this.breed_id = breed_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getDate_of_ownership() {
		return date_of_ownership;
	}
	public void setDate_of_ownership(Date date_of_ownership) {
		this.date_of_ownership = date_of_ownership;
	}
	
}
