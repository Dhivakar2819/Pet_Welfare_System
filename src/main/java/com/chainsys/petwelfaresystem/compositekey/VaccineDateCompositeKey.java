package com.chainsys.petwelfaresystem.compositekey;

import java.io.Serializable;

public class VaccineDateCompositeKey implements Serializable{
	private int pet_id;
	private int vaccine_id;
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public int getVaccine_id() {
		return vaccine_id;
	}
	public void setVaccine_id(int vaccine_id) {
		this.vaccine_id = vaccine_id;
	}
	public VaccineDateCompositeKey(int pet_id,int vaccine_id) {
		this.pet_id=pet_id;
		this.vaccine_id=vaccine_id;
	}
	
}
