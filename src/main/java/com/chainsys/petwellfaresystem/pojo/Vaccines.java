package com.chainsys.petwellfaresystem.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vaccines")
public class Vaccines {
	@Id
	private int vaccine_id;
	private String vaccine_name;
	public int getVaccine_id() {
		return vaccine_id;
	}
	public void setVaccine_id(int vaccine_id) {
		this.vaccine_id = vaccine_id;
	}
	public String getVaccine_name() {
		return vaccine_name;
	}
	public void setVaccine_name(String vaccine_name) {
		this.vaccine_name = vaccine_name;
	}
}
