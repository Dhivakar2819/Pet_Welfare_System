package com.chainsys.petwelfaresystem.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.petwelfaresystem.dto.VaccinesVaccineDateDto;
import com.chainsys.petwelfaresystem.model.VaccineDate;
import com.chainsys.petwelfaresystem.model.Vaccines;
import com.chainsys.petwelfaresystem.repository.VaccineDateRepository;
import com.chainsys.petwelfaresystem.repository.VaccineRepository;

@Service
public class VaccinesServices {
	@Autowired
	private VaccineRepository vaccineRepository;
	@Autowired
	private VaccineDateRepository vaccineDateRepository;
	
	public List<Vaccines> getVaccines(){
		return vaccineRepository.findAll();
	}
	public Vaccines save(Vaccines vaccine) {
		return vaccineRepository.save(vaccine);
	}

	public Vaccines findById(int id) {

		return vaccineRepository.findById(id);
	}
	public void deleteById(int id) {
		vaccineRepository.deleteById(id);
	}
	public List<Vaccines> getAllVaccines() {
        return vaccineRepository.findAll();
    }
	public VaccinesVaccineDateDto getVaccineAndVaccineDate(int id) {
		Vaccines vaccines=findById(id);
		VaccinesVaccineDateDto dto=new VaccinesVaccineDateDto();
		dto.setVaccines(vaccines);
		List<VaccineDate> vaccineDate=vaccineDateRepository.findByVaccineId(id);
		Iterator<VaccineDate> itr=vaccineDate.iterator();
		while(itr.hasNext()) {
			dto.addVaccineDate(itr.next());
		}
		return dto;
	}
}
