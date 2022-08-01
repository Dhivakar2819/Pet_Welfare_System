package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.pojo.Disease;
import com.chainsys.petwelfaresystem.repository.DiseaseRepositroy;

@Service
public class DiseaseServices {
	@Autowired
	private DiseaseRepositroy disease;
	
	public List<Disease> getDisease(){
		List<Disease> listpet=disease.findAll();
		return listpet;
	}
	public Disease save(Disease ds) {
		return disease.save(ds);
	}

	public Disease findById(int id) {

		return disease.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		disease.deleteById(id);
	}
}
