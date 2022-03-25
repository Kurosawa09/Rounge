package com.spring.rounge.repository;

import java.util.ArrayList;

import com.spring.rounge.vo.CompanyVO;

public interface CompanyMapper {

	int companyAdd(CompanyVO company);

	ArrayList<CompanyVO> listCompany();

	ArrayList<CompanyVO> companyIntroduce(String companyName);
}
