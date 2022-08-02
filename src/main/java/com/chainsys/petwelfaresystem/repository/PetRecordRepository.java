package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.model.PetRecords;

public interface PetRecordRepository extends CrudRepository<PetRecords,PetRecordsCompositeKey>{
	Optional<PetRecords> findById(PetRecordsCompositeKey id);
	PetRecords save(PetRecords record);
	void deleteById(PetRecordsCompositeKey id);
	List<PetRecords> findAll();
}
