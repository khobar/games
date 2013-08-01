package com.khobar.springgames.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.khobar.springgames.domain.Discipline;
import com.khobar.springgames.domain.Game;
import com.khobar.springgames.domain.Player;
import com.khobar.springgames.repository.DisciplineRepository;
import com.khobar.springgames.repository.GameRepository;
import com.khobar.springgames.repository.PlayerRepository;
import com.khobar.springgames.service.GameService;

@Controller
@RequestMapping("/games")
public class GameController {

	@Autowired
	private PlayerRepository playerRepository;

	@Autowired
	private GameRepository gameRepository;

	@Autowired
	private DisciplineRepository discRepository;

	@Autowired
	private GameService gameService;

	@ModelAttribute("disciplines")
	public List<Discipline> disciplines() {
		return discRepository.findAll();
	}

	@ModelAttribute("players")
	public List<Player> players() {
		return playerRepository.findAll();
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listGames(Model model) {
		List<Game> gameList = gameRepository.findAll();
		model.addAttribute("gameList", gameList);
		return "games/list";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String addGame(Model model) {
		model.addAttribute("game", new Game());
		return "games/edit";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String savePlayer(@Valid @ModelAttribute Game game,
			BindingResult result) {
		if (result.hasErrors()) {
			return "games/edit";
		} else {
			gameService.save(game);
			return "redirect:./list";
		}
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String editGame(@PathVariable Integer id, Model model) {
		Game game = gameRepository.findOne(id);

		if (game != null) {
			model.addAttribute("game", game);
			return "games/edit";
		} else {
			return "redirect:.";
		}
	}
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String deleteGame(@PathVariable Integer id, Model model){
		Game game = gameRepository.findOne(id);
		if (game != null) {
			gameRepository.delete(id);
			return "/games/list";
		} else {
			return "redirect:.";
		}
		
	}
	

}
