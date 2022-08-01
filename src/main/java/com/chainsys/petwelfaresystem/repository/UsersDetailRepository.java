package com.chainsys.petwelfaresystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.model.UsersDetail;

public interface UsersDetailRepository extends CrudRepository<UsersDetail,Integer>{
	UsersDetail findById(int id);
	UsersDetail save(UsersDetail ud);
	void deleteById(int id);
	List<UsersDetail> findAll();
}
