package com.chainsys.petwelfaresystem.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository;

@Service
public class VaccineDateServices {
	@Autowired
	private VaccineDateRepository vaccineDateRepository;
	
	public List<VaccineDate> getVaccineDate(){
		List<VaccineDate> listpet=vaccineDateRepository.findAll();
		return listpet;
	}
	public VaccineDate save(VaccineDate vaccineDate) {
		return vaccineDateRepository.save(vaccineDate);
	}

	public Optional<VaccineDate> findById(VaccineDateCompositeKey id) {

		return vaccineDateRepository.findById(id);
	}
	public void deleteById(VaccineDateCompositeKey id) {
		vaccineDateRepository.deleteById(id);
	}
	public List<VaccineDate> getAllVaccineDate() {
        return vaccineDateRepository.findAll();
    }
}
