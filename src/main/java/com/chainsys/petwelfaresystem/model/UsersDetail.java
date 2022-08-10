package com.chainsys.petwelfaresystem.model;

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
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="usersdetail")
public class UsersDetail {
	@Id
	@Column(name="user_id")
	@NotNull
	@Range(min=1,message="*Greater then zero")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "user_id")
    @SequenceGenerator(name = "user_id", sequenceName = "user_id",  allocationSize = 1)
	private int userId;
	@Column(name="user_name")
	@NotBlank(message = "*Name can't be Empty")
	private String userName;
	@Column(name="e_mail")
	@Email(message = "*mail id is not in correct format")
	@NotEmpty(message = "*Please enter email")
	private String email;
	@Column(name="password")
	@NotBlank(message = "*Password can't be Empty")
	private String password;
	@Column(name="phone_no")
	private long phoneNo;
	@Column(name="address")
	@NotBlank
	private String address;
	
	@OneToMany(mappedBy="usersdetail",fetch=FetchType.LAZY)
	private List<Pet> pet;
	
	public List<Pet> getPet() {
		return pet;
	}
	public void setPet(List<Pet> pet) {
		this.pet = pet;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
