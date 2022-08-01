package com.chainsys.petwelfaresystem.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate2;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository2;

@Service
public class VaccineDateServices2 {
	@Autowired
	private VaccineDateRepository2 vaccinedate;
	
	public List<VaccineDate2> getVaccineDate(){
		List<VaccineDate2> listpet=vaccinedate.findAll();
		return listpet;
	}
	public VaccineDate2 save(VaccineDate2 vdate) {
		return vaccinedate.save(vdate);
	}

	public Optional<VaccineDate2> findById(VaccineDateCompositeKey id) {

		return vaccinedate.findById(id);
	}
	@Transactional
	public void deleteById(VaccineDateCompositeKey id) {
		vaccinedate.deleteById(id);
	}
}
