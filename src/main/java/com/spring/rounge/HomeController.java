package com.spring.rounge;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String home(Model model) {
		logger.info("home 메소드 실행 (GET)");
		return "home";
	}
	
	@RequestMapping("/vip")
	public String vip(Model model) {
		logger.info("vip 메소드");
		return "vip";
	}
	
	@RequestMapping("/admin")
	public String admin(Model model) {
		logger.info("admin 메소드");
		return "admin";
	}
}