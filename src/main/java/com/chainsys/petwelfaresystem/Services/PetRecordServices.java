package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.pojo.PetRecords;
import com.chainsys.petwelfaresystem.repository.PetRecordRepository;

@Service
public class PetRecordServices {
	@Autowired
	private PetRecordRepository petrecord;
	
	public List<PetRecords> getPetRecords(){
		List<PetRecords> listpet=petrecord.findAll();
		return listpet;
	}
	public PetRecords save(PetRecords petre) {
		return petrecord.save(petre);
	}

	public PetRecords findById(int id) {

		return petrecord.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		petrecord.deleteById(id);
	}
}
