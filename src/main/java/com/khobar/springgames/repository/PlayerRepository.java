package com.khobar.springgames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.khobar.springgames.domain.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Integer>{


	List<Player> findByNameAndSurname(String name, String surname);
	List<Player> findByName(String name);
	
}
