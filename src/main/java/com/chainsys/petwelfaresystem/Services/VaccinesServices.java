package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.model.Vaccines;
import com.chainsys.petwelfaresystem.repository.VaccineRepository;

@Service
public class VaccinesServices {
	@Autowired
	private VaccineRepository vaccineRepository;
	
	public List<Vaccines> getVaccines(){
		List<Vaccines> listpet=vaccineRepository.findAll();
		return listpet;
	}
	public Vaccines save(Vaccines Vaccine) {
		return vaccineRepository.save(Vaccine);
	}

	public Vaccines findById(int id) {

		return vaccineRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		vaccineRepository.deleteById(id);
	}
}
