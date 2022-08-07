package com.chainsys.petwelfaresystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.petwelfaresystem.model.AdminDetail;

public interface AdminDetailRepository extends CrudRepository<AdminDetail,Integer>{
	AdminDetail findById(int id);
	AdminDetail save(AdminDetail ad);
	void deleteById(int id);
	List<AdminDetail> findAll();
	AdminDetail findByAdminIdAndAdminPassword(int id,String password); 
}
