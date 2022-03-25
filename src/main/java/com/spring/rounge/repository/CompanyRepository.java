package com.spring.rounge.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.rounge.controller.BoardController;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;
import com.spring.rounge.vo.CompanyVO;
import com.spring.rounge.vo.MemberVO;

@Repository
public class CompanyRepository {

	@Autowired
	private SqlSession session;

	public int companyAdd(CompanyVO company) {
		int result = 0;
		CompanyMapper mapper = null;
		
		try {
			mapper = session.getMapper(CompanyMapper.class);
			
			result = mapper.companyAdd(company);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<CompanyVO> listCompany() {
		ArrayList<CompanyVO> result = null;
		CompanyMapper mapper = null;
		
		try {
			mapper = session.getMapper(CompanyMapper.class);
			
			result = mapper.listCompany();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<CompanyVO> companyIntroduce(String companyName) {
		ArrayList<CompanyVO> result = null;
		CompanyMapper mapper = null;
		
		try {
			mapper = session.getMapper(CompanyMapper.class);
			
			result = mapper.companyIntroduce(companyName);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
