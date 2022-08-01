package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.model.Vaccines;

public interface VaccineRepository extends CrudRepository<Vaccines,Integer>{
	Vaccines findById(int id);
	Vaccines save(Vaccines vaccine);
	void deleteById(int id);
	List<Vaccines> findAll();

}
