package com.chainsys.petwelfaresystem.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.petwelfaresystem.dto.PetRecordDiseaseDto;
import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.PetRecords;
import com.chainsys.petwelfaresystem.repository.DiseaseRepositroy;
import com.chainsys.petwelfaresystem.repository.PetRecordRepository;

@Service
public class DiseaseServices {
	@Autowired
	private DiseaseRepositroy diseaseRepository;
	@Autowired
	private PetRecordRepository petRecordsRepository;
	
	public List<Disease> getDisease(){
		return diseaseRepository.findAll();
	}
	public Disease save(Disease disease) {
		return diseaseRepository.save(disease);
	}

	public Disease findById(int id) {

		return diseaseRepository.findById(id);
	}
	public void deleteById(int id) {
		diseaseRepository.deleteById(id);
	}
	public List<Disease> getAllDisease() {
        return diseaseRepository.findAll();
    }
	public PetRecordDiseaseDto getPetRecordDiseaseDto(int id) {
		Disease disease=findById(id);
		PetRecordDiseaseDto dto=new PetRecordDiseaseDto();
		dto.setDisease(disease);
		List<PetRecords> petRecords=petRecordsRepository.findByDiseaseId(id);
		Iterator<PetRecords> itr=petRecords.iterator();
		while(itr.hasNext()) {
			dto.addPetRecords(itr.next());
		}
		return dto;
	}
}
