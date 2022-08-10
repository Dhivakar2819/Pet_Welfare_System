package com.chainsys.petwelfaresystem.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.petwelfaresystem.model.AdminDetail;
import com.chainsys.petwelfaresystem.repository.AdminDetailRepository;
@Service
public class AdminDetailServices {
	@Autowired
	private AdminDetailRepository adminDetailRepository;
	
	public List<AdminDetail> getAdminDetail(){
		return adminDetailRepository.findAll();
	}
	public AdminDetail save(AdminDetail admin) {
		return adminDetailRepository.save(admin);
	}

	public AdminDetail findById(int id) {

		return adminDetailRepository.findById(id);
	}
	public void deleteById(int id) {
		adminDetailRepository.deleteById(id);
	}
	public AdminDetail getAdminIdAndAdminPassword(int id,String password) {
		return adminDetailRepository.findByAdminIdAndAdminPassword(id, password);
	}
}
