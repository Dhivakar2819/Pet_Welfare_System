package com.chainsys.petwelfaresystem.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.dto.PetPetRecordsDto;
import com.chainsys.petwelfaresystem.dto.PetVaccineDto;
import com.chainsys.petwelfaresystem.model.Breed;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.PetRecords;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.repository.PetRecordRepository;
import com.chainsys.petwelfaresystem.repository.PetRepository;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository;

@Service
public class PetServices {
	@Autowired
	private PetRepository petRepository;
	@Autowired
	private VaccineDateRepository vaccineDateRepository;
	@Autowired
	private PetRecordRepository petRecordRepository;
	public List<Pet> getPet(){
		return petRepository.findAll();
	}
	public Pet save(Pet pet) {
		return petRepository.save(pet);
	}

	public Pet findById(int id) {

		return petRepository.findById(id);
	}
	public void deleteById(int id) {
		petRepository.deleteById(id);
	}
	public List<Pet> findAllPet() {
        return petRepository.findAll();
    }
	public PetVaccineDto getPetAndVaccine(int id) {
		Pet pet=findById(id);
		PetVaccineDto dto=new PetVaccineDto();
		dto.setPet(pet);
		List<VaccineDate> vaccineDate=vaccineDateRepository.findByPetId(id);
		Iterator<VaccineDate> itr=vaccineDate.iterator();
		while(itr.hasNext()) {
			dto.addVaccineDate(itr.next());
		}
		return dto;
	}
	public PetPetRecordsDto getPetPetRecordsDto(int id) {
		Pet pet=findById(id);
		PetPetRecordsDto dto=new PetPetRecordsDto();
		dto.setPet(pet);
		List<PetRecords> petRecord=petRecordRepository.findByPetPetId(id);
		Iterator<PetRecords> itr=petRecord.iterator();
		while(itr.hasNext()) {
			dto.addPetRecords(itr.next());
		}
		return dto; 
	}
}
