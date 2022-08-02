package com.chainsys.petwelfaresystem.Services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.dto.PetVaccineDto;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.repository.PetRepository;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository;

@Service
public class PetServices {
	@Autowired
	private PetRepository petRepository;
	private VaccineDateRepository vaccineDateRepository;
	public List<Pet> getPet(){
		List<Pet> listpet=petRepository.findAll();
		return listpet;
	}
	public Pet save(Pet pet) {
		return petRepository.save(pet);
	}

	public Pet findById(int id) {

		return petRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		petRepository.deleteById(id);
	}
	public PetVaccineDto getPetAndVaccine(int id) {
		Pet pet=findById(id);
		PetVaccineDto dto=new PetVaccineDto();
		dto.setPet(pet);
		List<VaccineDate> vaccineDate=vaccineDateRepository.findByPetId(id);
		Iterator<VaccineDate> itr=vaccineDate.iterator();
		while(itr.hasNext()) {
			dto.addVaccineDate((VaccineDate) itr.next());
		}
		return dto;
	}
}
