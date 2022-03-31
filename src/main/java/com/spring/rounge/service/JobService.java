package com.spring.rounge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.rounge.repository.JobRepository;
import com.spring.rounge.vo.JobVO;

@Service
public class JobService {
	@Autowired
	private JobRepository repository;

	//채용 공고 추가
	public boolean jobAdd(String companyName, int vacancyCareer, String vacancyPeriod,
			String vacancyTitle, String vacancyContent) {
		
		JobVO vacancy = new JobVO();
		vacancy.setCompanyName(companyName);
		vacancy.setVacancyCareer(vacancyCareer);
		vacancy.setVacancyPeriod(vacancyPeriod);
		vacancy.setVacancyTitle(vacancyTitle);
		vacancy.setVacancyContent(vacancyContent);
		
		return repository.jobAdd(vacancy) > 0;
	}
	
	
}
