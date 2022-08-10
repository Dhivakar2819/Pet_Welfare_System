package com.chainsys.petwelfaresystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.model.PetRecords;
import com.chainsys.petwelfaresystem.repository.PetRecordRepository;

@Service
public class PetRecordServices {
	@Autowired
	private PetRecordRepository petRecordRepository;
	
	public List<PetRecords> getPetRecords(){
		return petRecordRepository.findAll();
	}
	public PetRecords save(PetRecords petRecord) {
		return petRecordRepository.save(petRecord);
	}

	public Optional<PetRecords> findById(PetRecordsCompositeKey id) {

		return petRecordRepository.findById(id);
	}
	public void deleteById(PetRecordsCompositeKey id) {
		petRecordRepository.deleteById(id);
	}
}
