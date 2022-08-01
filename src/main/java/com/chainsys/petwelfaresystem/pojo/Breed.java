package com.chainsys.petwelfaresystem.pojo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="breeds")
public class Breed {
	@Id
	@Column(name="breed_id")
	private int id;
	private String breed_type;
	
	@OneToMany(mappedBy="breed", fetch= FetchType.LAZY)
	private List<Pet> pets;
	
	public List<Pet> getPets() {
		return pets;
	}
	public void setPets(List<Pet> pets) {
		this.pets = pets;
	}
	public int getId() {
		return id;
	}
	public void setId(int breed_id) {
		this.id = breed_id;
	}
	public String getBreed_type() {
		return breed_type;
	}
	public void setBreed_type(String breed) {
		this.breed_type = breed;
	}

}
