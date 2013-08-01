package com.khobar.springgames.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khobar.springgames.domain.Game;

public interface GameRepository extends JpaRepository<Game, Integer> {

}
