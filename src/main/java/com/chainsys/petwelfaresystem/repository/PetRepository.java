package com.chainsys.petwelfaresystem.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.model.Pet;


public interface PetRepository extends CrudRepository<Pet,Integer> {
	Pet findById(int id);
	@SuppressWarnings("unchecked")
	Pet save(Pet pet);
	void deleteById(int id);
	List<Pet>findAll();
	List<Pet> findByBreedId(int petid);
	List<Pet> findByDiseaseId(int petid);
}