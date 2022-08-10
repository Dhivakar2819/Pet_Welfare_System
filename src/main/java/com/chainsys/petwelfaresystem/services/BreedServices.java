package com.chainsys.petwelfaresystem.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.model.Breed;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.repository.BreedRepository;
import com.chainsys.petwelfaresystem.repository.PetRepository;
@Service
public class BreedServices {
	@Autowired
	private BreedRepository breedRepository;
	@Autowired
	private PetRepository petRepository;
	
	public List<Breed> getBreed(){
		return breedRepository.findAll();
	}
	public Breed save(Breed breed) {
		return breedRepository.save(breed);
	}

	public Breed findById(int id) {

		return breedRepository.findById(id);
	}
	public void deleteById(int id) {
		breedRepository.deleteById(id);
	}
	public List<Breed> getAllBreed() {
        return breedRepository.findAll();
    }
	public PetBreedDTO getPetAndBreed(int id) {
		Breed breed= findById(id);
		PetBreedDTO dto=new PetBreedDTO();
		dto.setBreed(breed);
		List<Pet> pet= petRepository.findByBreedId(id);
		Iterator<Pet> itr=pet.iterator();
		while(itr.hasNext()) {
			dto.addPet(itr.next());
		}
		return dto;
	}
}
