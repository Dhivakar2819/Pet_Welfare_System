package com.chainsys.petwelfaresystem.Services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.dto.UsersDetailPetDTO;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.UsersDetail;
import com.chainsys.petwelfaresystem.repository.PetRepository;
import com.chainsys.petwelfaresystem.repository.UsersDetailRepository;

@Service
public class UsersDetailServices {
	@Autowired
	private UsersDetailRepository usersDetailRepository;
	@Autowired
	private PetRepository petRepository;
	
	public List<UsersDetail> getUserDetail(){
		List<UsersDetail> listpet=usersDetailRepository.findAll();
		return listpet;
	}
	public UsersDetail save(UsersDetail usersDetail) {
		return usersDetailRepository.save(usersDetail);
	}

	public UsersDetail findById(int id) {

		return usersDetailRepository.findById(id);
	}
	public void deleteById(int id) {
		usersDetailRepository.deleteById(id);
	}
	public UsersDetail getUserByEmailAndPassword(String email,String password) {
		return usersDetailRepository.findByEmailAndPassword(email, password);
	}
	public UsersDetailPetDTO getUsersAndPet(int id) {
		UsersDetail usersDetail=findById(id);
		UsersDetailPetDTO dto=new UsersDetailPetDTO();
		dto.setUsersdetail(usersDetail);
		List<Pet>pet=petRepository.findByUserId(id);
		Iterator<Pet> itr=pet.iterator();
		while(itr.hasNext()) {
			dto.addPet((Pet) itr.next());
		}
		return dto;
	}
	public void addUserByPet(int id) {
		UsersDetail usersDetail=findById(id);
		UsersDetailPetDTO dto=new UsersDetailPetDTO();
		dto.setUsersdetail(usersDetail);
		List<Pet>pet=dto.getPetlist();
		int count=pet.size();
		for(int i=0;i<count;i++) {
			petRepository.save(pet.get(i));
		}
	}
}
