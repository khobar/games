package com.khobar.springgames.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.khobar.springgames.domain.Game;
import com.khobar.springgames.repository.GameRepository;

@Service
public class GameService {
	@Autowired
	private GameRepository gameRepository;

	@Transactional
	public Game save(Game game) {
		// TODO implement checking
		return gameRepository.save(game);
	}

}
