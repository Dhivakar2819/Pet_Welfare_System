package com.chainsys.petwelfaresystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.chainsys.petwelfaresystem.pojo.Disease;
public interface DiseaseRepositroy extends CrudRepository<Disease,Integer>{
	Disease findById(int id);

	Disease save(Disease dis);

	void deleteById(int id);

	List<Disease> findAll();
}
