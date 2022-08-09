package com.chainsys.petwelfaresystem.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$", message = "*at least one letter, one number and one special character ")
	private String password;
	
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
	
	
}
