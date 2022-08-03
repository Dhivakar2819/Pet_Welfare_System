package com.chainsys.petwelfaresystem.Services;

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
		List<Vaccines> listpet=vaccineRepository.findAll();
		return listpet;
	}
	public Vaccines save(Vaccines Vaccine) {
		return vaccineRepository.save(Vaccine);
	}

	public Vaccines findById(int id) {

		return vaccineRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		vaccineRepository.deleteById(id);
	}
	public VaccinesVaccineDateDto getVaccineAndVaccineDate(int id) {
		Vaccines vaccines=findById(id);
		VaccinesVaccineDateDto dto=new VaccinesVaccineDateDto();
		dto.setVaccines(vaccines);
		List<VaccineDate> vaccineDate=vaccineDateRepository.findByVaccineId(id);
		Iterator<VaccineDate> itr=vaccineDate.iterator();
		while(itr.hasNext()) {
			dto.addVaccineDate((VaccineDate) itr.next());
		}
		return dto;
	}
}
