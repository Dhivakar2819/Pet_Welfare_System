package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.pojo.Pet;
import com.chainsys.petwelfaresystem.repository.PetRepository;

@Service
public class PetServices {
	@Autowired
	private PetRepository petr;
	
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
	public void findByBreedId(int id) {
		petr.findByBreedId(id);
	}
}
