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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="breeds")
public class Breed {
	@Id
	@Column(name="breed_id") //primary key
	@NotNull
	@Range(min=1,message="*Greater then zero")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "breed_id")
    @SequenceGenerator(name = "breed_id", sequenceName = "breed_id",  allocationSize = 1)
	private int id;
	@Column(name="breed_type")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	private String breedType;
	
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
	public void setId(int id) {
		this.id = id;
	}
	
	public String getBreedType() {
		return breedType;
	}
	public void setBreedType(String breedType) {
		this.breedType = breedType;
	}
}
