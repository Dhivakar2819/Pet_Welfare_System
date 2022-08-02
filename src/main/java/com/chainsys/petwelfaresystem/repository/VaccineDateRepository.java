package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate;

public interface VaccineDateRepository extends CrudRepository<VaccineDate,VaccineDateCompositeKey>{
	Optional<VaccineDate> findById(VaccineDateCompositeKey id);
	VaccineDate save(VaccineDate vdate);
	void deleteById(VaccineDateCompositeKey id);
	List<VaccineDate> findAll();
	List<VaccineDate> findByPetId(int id);
}
