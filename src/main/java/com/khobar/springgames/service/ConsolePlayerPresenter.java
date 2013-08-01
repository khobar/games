package com.khobar.springgames.service;

import com.khobar.springgames.domain.Player;
import com.khobar.springgames.utils.ConsoleUtils;

public class ConsolePlayerPresenter implements PlayerPresenter {

	private ConsoleUtils consoleUtils;
	
	public void present(Player player) {
		consoleUtils.printf("Name: %s %s, Age: %d", player.getName(), player.getSurname(), player.getAge());
	}
	
	public void setConsoleUtils(ConsoleUtils consoleUtils) {
		this.consoleUtils = consoleUtils;
	}
}
