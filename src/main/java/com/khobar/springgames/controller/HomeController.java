package com.khobar.springgames.controller;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.khobar.springgames.domain.Player;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		Player player = new Player();
		player.setName("Adam");
		player.setSurname("Słodowy");
		Player player1 = new Player();
		player1.setName("Jan");
		player1.setSurname("Nowak");
		Player player2 = new Player();
		player2.setName("Grzes");
		player2.setSurname("Kowalski");
		List<Player> players = Arrays.asList(player, player1, player2);

		List<String> imiona = Arrays.asList("Kuba", "Tymek", "Edyta");
		model.addAttribute("names", imiona);
		model.addAttribute("player", player);
		model.addAttribute("players", players);
		return "index";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homeSubmit(@RequestParam("a") int a,
			@RequestParam("b") int b, Model model) {
		model.addAttribute("c", a + b);
		return home(model);

	}

	@RequestMapping(value = "day")
	public String countDay(
			@RequestParam(value = "date", required = false) Date data,
			Model model) {
		if (data == null) {
			data = new Date();
		}
		Calendar cal = Calendar.getInstance();
		cal.setTime(data);
		model.addAttribute("dayNumber", cal.get(Calendar.DAY_OF_YEAR));

		return "dayOfYear";
	}

	@InitBinder
	public void initBinderAll(WebDataBinder binder) {

		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			@Override
			public String getAsText() {
				Date date = (Date) getValue();
				return new SimpleDateFormat("yyyy-MM-dd").format(date);
			}
			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				try {
					setValue(new SimpleDateFormat("yyyy-MM-dd").parse(text));
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
		});
	}

}
