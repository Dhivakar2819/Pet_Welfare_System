package com.chainsys.petwelfaresystem.Services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.pojo.Pet;
import com.chainsys.petwelfaresystem.repository.PetRepository;

@Service
public class PetServices {
	private PetRepository petr;

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
}
