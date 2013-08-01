package com.khobar.springgames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khobar.springgames.domain.Discipline;

public interface DisciplineRepository extends JpaRepository<Discipline, Integer>{

	List<Discipline> findByName(String name);

}
