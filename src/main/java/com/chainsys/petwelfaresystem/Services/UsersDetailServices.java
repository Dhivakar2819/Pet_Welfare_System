package com.chainsys.petwelfaresystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.pojo.UsersDetail;
import com.chainsys.petwelfaresystem.repository.UsersDetailRepository;

@Service
public class UsersDetailServices {
	@Autowired
	private UsersDetailRepository udr;
	
	public List<UsersDetail> getUserDetail(){
		List<UsersDetail> listpet=udr.findAll();
		return listpet;
	}
	public UsersDetail save(UsersDetail ud) {
		return udr.save(ud);
	}

	public UsersDetail findById(int id) {

		return udr.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		udr.deleteById(id);
	}
}
