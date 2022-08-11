package com.chainsys.petwelfaresystem.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="pets")
public class Pet {
	@Id
	@Column(name="pet_id")
	@NotNull
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "pet_id")
    @SequenceGenerator(name = "pet_id", sequenceName = "pet_id",  allocationSize = 1)
	private int petId;
	@Column(name="user_id")
	@NotNull
	@Range(min=1,message="*Greater then zero")
	private int userId;
	@Column(name="breed_id") 
	private int breedId;
	@Column(name="pet_type")
	private String petType;
	@Column(name="pet_name")
	@NotBlank(message = "*Name can't be Empty")
	private String petName;
	@Column(name="dob")
	@DateTimeFormat
	private Date dob;
	@NotBlank(message = "*Gender can't be Empty")
	private String gender;
	@Column(name="date_of_ownership")
	@DateTimeFormat
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
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id",nullable=false, insertable=false, updatable=false)
	private UsersDetail usersdetail;
	
	public UsersDetail getUsersdetail() {
		return usersdetail;
	}	
	public void setUsersdetail(UsersDetail usersdetail) {
		this.usersdetail = usersdetail;
	}
	@OneToMany(mappedBy="pet",fetch=FetchType.LAZY)
	private List<VaccineDate> vaccineDate;
	
	public List<VaccineDate> getVaccineDate() {
		return vaccineDate;
	}
	public void setVaccineDate(List<VaccineDate> vaccineDate) {
		this.vaccineDate = vaccineDate;
	}
	@OneToMany(mappedBy="pet",fetch=FetchType.LAZY)
	private List<PetRecords> petRecords;
	
	public List<PetRecords> getPetRecords() {
		return petRecords;
	}
	public void setPetRecords(List<PetRecords> petRecords) {
		this.petRecords = petRecords;
	}
	public int getPetId() {
		return petId;
	}
	public void setPetId(int petId) {
		this.petId = petId;
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
