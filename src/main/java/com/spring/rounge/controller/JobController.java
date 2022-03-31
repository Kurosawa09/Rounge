package com.spring.rounge.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.rounge.service.JobService;

@Controller
@RequestMapping(value="/job")
public class JobController {
	private static final Logger logger = LoggerFactory.getLogger(JobController.class);
	
	@Autowired
	private JobService service;
	
	//채용공고 목록 GET
	@RequestMapping(value = "/jobHome", method = RequestMethod.GET)
	public String jobHome() {
		logger.info("jobHome 실행 (GET)");
		return "/job/jobHome";
	}
	
	//채용공고 추가 GET
	@RequestMapping(value = "/jobAdd", method = RequestMethod.GET)
	public String jobAdd() {
		logger.info("jobAdd 실행 (GET)");
		return"/job/jobAdd";
	}
	
	//채용 공고 추가 POST
	@RequestMapping(value ="/jobAdd", method = RequestMethod.POST)
	public String jodAdd(String companyName, int vacancyCareer, String vacancyPeriod, 
							String vacancyTitle, String vacancyContent, HttpSession session) {
		
		logger.info("jobAdd 메소드 실행(POST)");
		
		logger.info("companyName", companyName); //기업이름
		logger.info("vacancyCareer",vacancyCareer);// 경력설정
		logger.info("vacancyPeriod",vacancyPeriod); //모집기관
		logger.info("vacancyTitle",vacancyTitle); // 채용공고 제목
		logger.info("vacancyContent",vacancyContent); //채용 공고 내용
		
		boolean result = service.jobAdd(companyName,vacancyCareer,
											vacancyPeriod,vacancyTitle,vacancyContent);
		String returnUrl = null;
		if (result) {
			logger.info("채용공고 등록 성공");
			returnUrl = "redirect:/job/jobHome";
		}else {
			logger.info("등록 실패");
			returnUrl = "job/jobAdd";
		}
		
		return returnUrl;
	}
	
	//채용공고 읽기 
	@RequestMapping(value = "/readJob", method = RequestMethod.GET)
	public String readJob() {
		logger.info("readJob 실행 (GET)");
		return"/job/readJob";
	}
	
	
}
