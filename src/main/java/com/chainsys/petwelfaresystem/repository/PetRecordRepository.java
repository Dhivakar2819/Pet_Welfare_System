package com.chainsys.petwelfaresystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.chainsys.petwelfaresystem.pojo.PetRecords;

public interface PetRecordRepository extends CrudRepository<PetRecords,Integer>{
	PetRecords findById(int id);
	PetRecords save(PetRecords record);
	void deleteById(int id);
	List<PetRecords> findAll();
}
