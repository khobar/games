package com.khobar.springgames.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.khobar.springgames.domain.Discipline;
import com.khobar.springgames.repository.DisciplineRepository;

@Service
public class DisciplineService {
	
	@Autowired
	private DisciplineRepository discRepository;
	
	@Transactional
	public void updateNo(Discipline oldDisc, Discipline newDisc) {
		Discipline discipline = discRepository.findOne(oldDisc.getId());
		discipline.setPlayersNumber(discipline.getPlayersNumber()-1);
		discRepository.save(discipline);
		
		discipline = discRepository.findOne(newDisc.getId());
		discipline.setPlayersNumber(discipline.getPlayersNumber() + 1);
		discRepository.save(discipline);
	}

	public void addNo(Discipline dis) {
		Discipline discipline = discRepository.findOne(dis.getId());
		discipline.setPlayersNumber(discipline.getPlayersNumber() + 1);
		discRepository.save(discipline);
		
	}
}
