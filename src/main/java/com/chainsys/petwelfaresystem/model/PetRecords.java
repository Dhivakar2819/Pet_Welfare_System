package com.chainsys.petwelfaresystem.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.chainsys.petwelfaresystem.compositekey.PetRecordsCompositeKey;

@Entity
@Table(name="petrecords")
@IdClass(PetRecordsCompositeKey.class)
public class PetRecords {
	@Id
	@Column(name="pet_id")
	private int id;
	@Id
	@Column(name="disease_id")
	private int diseaseId;
	@Column(name="date_observ")
	private Date dateObserv;
	@Column(name="observation")
	private String observation;
	@Column(name="recover_date")
	private Date recoverDate;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDiseaseId() {
		return diseaseId;
	}
	public void setDiseaseId(int diseaseId) {
		this.diseaseId = diseaseId;
	}
	public Date getDateObserv() {
		return dateObserv;
	}
	public void setDateObserv(Date dateObserv) {
		this.dateObserv = dateObserv;
	}
	public String getObservation() {
		return observation;
	}
	public void setObservation(String observation) {
		this.observation = observation;
	}
	public Date getRecoverDate() {
		return recoverDate;
	}
	public void setRecoverDate(Date recoverDate) {
		this.recoverDate = recoverDate;
	}
	
}
