package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.compositekey.VaccineDateCompositeKey;
import com.chainsys.petwelfaresystem.model.VaccineDate2;

public interface VaccineDateRepository2 extends CrudRepository<VaccineDate2,VaccineDateCompositeKey>{
	Optional<VaccineDate2> findById(VaccineDateCompositeKey id);
	VaccineDate2 save(VaccineDate2 vdate);
	void deleteById(VaccineDateCompositeKey id);
	List<VaccineDate2> findAll();
}
