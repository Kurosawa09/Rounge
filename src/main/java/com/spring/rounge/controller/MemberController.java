package com.spring.rounge.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.rounge.controller.MemberController;
import com.spring.rounge.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service; 
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join()
	{
		logger.info("join 메소드 실행(GET)");
		return "member/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(String id9, String password8, String name7, int photo5, String language6, Model model)
	{
		logger.info("join 메소드 실행(POST)");

		logger.info("id : {}", id9);
		logger.info("password : {}", password8);
		logger.info("name : {}", name7);
		logger.info("photo : {}", photo5);
		logger.info("language : {}", language6);

		
		boolean result = service.join(id9, password8, name7, photo5, language6);
		boolean auth = service.auth(id9);
		
		String returnUrl = "member/join";
		
		if(result)
		{
			if(auth) {
			logger.info("회원 가입 완료");
			returnUrl = "redirect:/member/login";
			}
			else {
				logger.info("회원 가입 실패");
				model.addAttribute("errMsg111", "권한 메소드 오류");
			}
		}
		else
		{
			logger.info("회원 가입 실패");
			model.addAttribute("errMsg111", "중복된 ID 또는 이름입니다.");
		}
		
		return returnUrl;	
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login()
	{
		logger.info("login 메소드 실행(GET)");
		return "/member/login";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about()
	{
		logger.info("about 메소드 실행(GET)");
		return "about";
	}
	
	@RequestMapping(value = "/causes", method = RequestMethod.GET)
	public String causes()
	{
		logger.info("causes 메소드 실행(GET)");
		return "causes";
	}
	
	@RequestMapping(value = "/causesSingle", method = RequestMethod.GET)
	public String causesSingle()
	{
		logger.info("causesSingle 메소드 실행(GET)");
		return "causes-single";
	}

	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event()
	{
		logger.info("event 메소드 실행(GET)");
		return "event";
	}
	
	@RequestMapping(value = "/amu", method = RequestMethod.GET)
	public String amu()
	{
		logger.info("event 메소드 실행(GET)");
		return "amu";
	}
}
