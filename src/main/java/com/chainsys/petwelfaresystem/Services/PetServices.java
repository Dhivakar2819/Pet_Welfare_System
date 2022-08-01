package com.chainsys.petwelfaresystem.Services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.dto.PetAndDiseaseDTO;
import com.chainsys.petwelfaresystem.model.Disease;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.repository.DiseaseRepositroy;
import com.chainsys.petwelfaresystem.repository.PetRepository;

@Service
public class PetServices {
	@Autowired
	private PetRepository petr;
	private DiseaseRepositroy diseaserepository;
	
	public List<Pet> getPet(){
		List<Pet> listpet=petr.findAll();
		return listpet;
	}
	public Pet save(Pet pet) {
		return petr.save(pet);
	}

	public Pet findById(int id) {

		return petr.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		petr.deleteById(id);
	}
	public PetAndDiseaseDTO getPetAndDisease(int id) {
		Pet pet=findById(id);
		PetAndDiseaseDTO dto = new PetAndDiseaseDTO();
		dto.setPet(pet);
		List<Disease>diseaselist=diseaserepository.findByPetId(id);
		Iterator<Disease> itr=diseaselist.iterator();
		int count=diseaselist.size();
		for(int i=0;i<count;i++) {
			dto.addDisease((Disease) itr.next());		}
		return dto;
	}
}
