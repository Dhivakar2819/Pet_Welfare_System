package com.chainsys.petwelfaresystem.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.model.UsersDetail;

public class UsersDetailPetDTO {
	private UsersDetail usersDetail;
	private List<Pet> petlist=new ArrayList<>();
	
	public UsersDetail getUsersdetail() {
		return usersDetail;
	}
	public void setUsersdetail(UsersDetail usersdetail) {
		this.usersDetail = usersdetail;
	}
	public List<Pet> getPetlist() {
		return petlist;
	}
	
	public void setPetlist(List<Pet> petlist) {
		this.petlist = petlist;
	}
	public void addPet(Pet pet) {
		petlist.add(pet);
	}
}
