package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.petwelfaresystem.pojo.VaccineDate;

public interface VaccineDateRepository extends CrudRepository<VaccineDate,Integer>{
	VaccineDate findById(int id);
	VaccineDate save(VaccineDate vdate);
	void deleteById(int id);
	List<VaccineDate> findAll();
}
