package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository;

@Service
public class VaccineDateServices {
	@Autowired
	private VaccineDateRepository vaccinedate;
	
	public List<VaccineDate> getVaccineDate(){
		List<VaccineDate> listpet=vaccinedate.findAll();
		return listpet;
	}
	public VaccineDate save(VaccineDate vdate) {
		return vaccinedate.save(vdate);
	}

	public VaccineDate findById(int id) {

		return vaccinedate.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		vaccinedate.deleteById(id);
	}
}
