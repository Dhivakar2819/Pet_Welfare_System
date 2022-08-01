package com.chainsys.petwelfaresystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.model.Breed;

public interface BreedRepository extends CrudRepository<Breed,Integer>{
	Breed findById(int id);
	Breed save(Breed br);
	void deleteById(int id);
	List<Breed> findAll();
}
