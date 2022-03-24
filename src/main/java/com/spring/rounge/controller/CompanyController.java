package com.spring.rounge.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.rounge.service.BoardService;
import com.spring.rounge.service.CompanyService;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;
import com.spring.rounge.vo.CompanyVO;
import com.spring.rounge.vo.MemberVO;

@Controller
@RequestMapping(value = "/company")
public class CompanyController {
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);

	@Autowired
	private CompanyService service;
	
	@RequestMapping(value = "/companyHome", method = RequestMethod.GET)
	public String companyHome(Model model) {
		
		logger.info("companyHome 메소드 실행(GET)");

		ArrayList<CompanyVO> listCompany = service.listCompany();
		model.addAttribute("listCompany", listCompany);
		
		return "company/companyHome";
	}
	
	@RequestMapping(value = "/companyAdd", method = RequestMethod.GET)
	public String companyAdd() {
		return "company/companyAdd";
	}
	
	// 게시판 추가 POST
		@RequestMapping(value = "/companyAdd", method = RequestMethod.POST)
		public String companyAdd(CompanyVO company, HttpSession session) {
			logger.info("companyAdd 메소드 실행(POST)");

			logger.info("company : {}", company);

			boolean result = service.companyAdd(company);
			String returnUrl = null;
			if (result) {
				logger.info("새 기업 등록 성공");
				returnUrl = "redirect:/company/companyHome";
			} else {
				logger.info("새 기업 등록 실패");
				returnUrl = "board/listBaodasdasdard";
			}
			return returnUrl;
		}
		
		// 각 게시판 이름과 일치하는 게시글만 불러오기
		@RequestMapping(value = "/companyName", method = RequestMethod.GET)
		public String companyName(String companyName, Model model) {
			logger.info("companyName 메소드 실행(GET)");

			ArrayList<CompanyVO> companyIntroduce = service.companyIntroduce(companyName);
			logger.info("companyIntroduce : {}", companyIntroduce);

			model.addAttribute("companyIntroduce", companyIntroduce);
			model.addAttribute("companyName", companyName);

			return "board/boardName";
		}

}
