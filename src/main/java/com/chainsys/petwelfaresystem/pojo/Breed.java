package com.chainsys.petwelfaresystem.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="breeds")
public class Breed {
	@Id
	private int breed_id;
	private String breed_type;
	public int getBreed_id() {
		return breed_id;
	}
	public void setBreed_id(int breed_id) {
		this.breed_id = breed_id;
	}
	public String getBreed() {
		return breed_type;
	}
	public void setBreed(String breed) {
		this.breed_type = breed;
	}
}
