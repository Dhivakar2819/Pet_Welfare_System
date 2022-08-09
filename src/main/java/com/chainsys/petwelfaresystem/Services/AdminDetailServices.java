package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.model.AdminDetail;
import com.chainsys.petwelfaresystem.repository.AdminDetailRepository;
@Service
public class AdminDetailServices {
	@Autowired
	private AdminDetailRepository adminDetailRepository;
	
	
	public List<AdminDetail> getAdminDetail(){
		List<AdminDetail> listbreed=adminDetailRepository.findAll();
		return listbreed;
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
