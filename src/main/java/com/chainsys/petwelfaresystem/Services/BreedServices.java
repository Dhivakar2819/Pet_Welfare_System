package com.chainsys.petwelfaresystem.Services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.pojo.Breed;
import com.chainsys.petwelfaresystem.pojo.Pet;
import com.chainsys.petwelfaresystem.repository.BreedRepository;
import com.chainsys.petwelfaresystem.repository.PetRepository;
@Service
public class BreedServices {
	@Autowired
	private BreedRepository breed;
	private PetRepository petr;
	
	public List<Breed> getBreed(){
		List<Breed> listbreed=breed.findAll();
		return listbreed;
	}
	public Breed save(Breed br) {
		return breed.save(br);
	}

	public Breed findById(int id) {

		return breed.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		breed.deleteById(id);
	}
	public PetBreedDTO getPetAndBreed(int id) {
		Breed br= findById(id);
		PetBreedDTO dto=new PetBreedDTO();
		dto.setBreed(br);
		List<Pet> pet= petr.findByBreedId(id);
		Iterator<Pet> itr=pet.iterator();
		while(itr.hasNext()) {
			dto.addPet((Pet) itr.next());
		}
		return dto;
	}
	@Transactional
	public void addDPetAndAppointment(PetBreedDTO dto) {
		Breed br=dto.getBreed();
		save(br);
		List<Pet>petlist=dto.getPetlist();
		int count=petlist.size();
		for(int i=0;i<count;i++) {
			petr.save(petlist.get(i));
		}
	}
}
