package com.chainsys.petwelfaresystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="ADMINDETAIL")
public class AdminDetail {
	@Id
	@Column(name="admin_id")
	@NotNull(message="*Greater then zero")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "admin_id")
    @SequenceGenerator(name = "admin_id", sequenceName = "admin_id",  allocationSize = 1)
	private int adminId;
	@Column(name="admin_name")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String adminName;
	@NotBlank
	private String email;
	@Column(name="admin_password")
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
	@NotBlank(message = "*Password can't be Empty")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$", message = "*at least one letter, one number and one special character ")
	private String adminPassword;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	
}
