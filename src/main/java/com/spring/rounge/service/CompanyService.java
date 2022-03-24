package com.spring.rounge.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.rounge.repository.BoardRepository;
import com.spring.rounge.repository.CompanyRepository;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;
import com.spring.rounge.vo.CompanyVO;

@Service
public class CompanyService {
	@Autowired 
	private CompanyRepository repository;

	public boolean companyAdd(CompanyVO company) {
		return  repository.companyAdd(company) > 0;
	}

	public ArrayList<CompanyVO> listCompany() {
		return  repository.listCompany();
	}

	public ArrayList<CompanyVO> companyIntroduce(String companyName) {
		return  repository.companyIntroduce(companyName);
		}
}
