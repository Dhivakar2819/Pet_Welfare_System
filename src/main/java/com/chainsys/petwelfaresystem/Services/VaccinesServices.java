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
	private VaccineRepository vaccine;
	
	public List<Vaccines> getVaccines(){
		List<Vaccines> listpet=vaccine.findAll();
		return listpet;
	}
	public Vaccines save(Vaccines vac) {
		return vaccine.save(vac);
	}

	public Vaccines findById(int id) {

		return vaccine.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		vaccine.deleteById(id);
	}
}
