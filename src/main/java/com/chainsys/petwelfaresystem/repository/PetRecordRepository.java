package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;
import com.chainsys.petwelfaresystem.model.PetRecords;
@Repository
public interface PetRecordRepository extends CrudRepository<PetRecords,PetRecordsCompositeKey>{
	Optional<PetRecords> findById(PetRecordsCompositeKey id);
	PetRecords save(PetRecords petRecord);
	void deleteById(PetRecordsCompositeKey id);
	List<PetRecords> findAll();
	List<PetRecords> findByDiseaseId(int id);
	List<PetRecords> findByPetPetId(int id);
}
