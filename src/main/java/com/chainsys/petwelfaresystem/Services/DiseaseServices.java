package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.repository.DiseaseRepositroy;

@Service
public class DiseaseServices {
	@Autowired
	private DiseaseRepositroy diseaseRepository;
	
	public List<Disease> getDisease(){
		List<Disease> listpet=diseaseRepository.findAll();
		return listpet;
	}
	public Disease save(Disease disease) {
		return diseaseRepository.save(disease);
	}

	public Disease findById(int id) {

		return diseaseRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		diseaseRepository.deleteById(id);
	}
}
