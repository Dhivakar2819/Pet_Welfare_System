package com.chainsys.petwelfaresystem.Services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.dto.PetBreedDTO;
import com.chainsys.petwelfaresystem.model.Breed;
import com.chainsys.petwelfaresystem.model.Pet;
import com.chainsys.petwelfaresystem.repository.BreedRepository;
import com.chainsys.petwelfaresystem.repository.PetRepository;
@Service
public class BreedServices {
	@Autowired
	private BreedRepository breedRepository;
	@Autowired
	private PetRepository petRepository;
	
	public List<Breed> getBreed(){
		List<Breed> listbreed=breedRepository.findAll();
		return listbreed;
	}
	public Breed save(Breed breed) {
		return breedRepository.save(breed);
	}

	public Breed findById(int id) {

		return breedRepository.findById(id);
	}
	public void deleteById(int id) {
		breedRepository.deleteById(id);
	}
//	public  List<Breed> findAll(){
//		List<Breed>breed=breedServices.findAll();
//		return breed;
//	}
	public PetBreedDTO getPetAndBreed(int id) {
		Breed breed= findById(id);
		PetBreedDTO dto=new PetBreedDTO();
		dto.setBreed(breed);
		List<Pet> pet= petRepository.findByBreedId(id);
		Iterator<Pet> itr=pet.iterator();
		while(itr.hasNext()) {
			dto.addPet((Pet) itr.next());
		}
		return dto;
	}
//	@Transactional
//	public void addDPetAndBreed(PetBreedDTO dto) {
//		Breed br=dto.getBreed();
//		save(br);
//		List<Pet>petlist=dto.getPetlist();
//		int count=petlist.size();
//		for(int i=0;i<count;i++) {
//			petr.save(petlist.get(i));
//		}
//	}
}
