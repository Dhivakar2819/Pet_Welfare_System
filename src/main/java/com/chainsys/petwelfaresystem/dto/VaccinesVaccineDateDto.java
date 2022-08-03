package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.model.Vaccines;

public class VaccinesVaccineDateDto {
	private Vaccines vaccines;
	private List<VaccineDate> vaccineDateList=new ArrayList<VaccineDate>();
	public Vaccines getVaccines() {
		return vaccines;
	}
	public void setVaccines(Vaccines vaccines) {
		this.vaccines = vaccines;
	}
	public List<VaccineDate> getVaccineDateList() {
		return vaccineDateList;
	}
	public void addVaccineDate(VaccineDate vaccineDate) {
		vaccineDateList.add(vaccineDate);
	}
}
