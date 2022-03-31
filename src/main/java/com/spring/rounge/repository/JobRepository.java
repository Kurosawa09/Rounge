package com.spring.rounge.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.rounge.vo.JobVO;

@Repository
public class JobRepository {
	
	@Autowired
	private SqlSession session;

	//채용공고 추가
	public int jobAdd(JobVO vacancy) {
		int result = 0;
		JobMapper mapper = null;
		
		try {
			mapper = session.getMapper(JobMapper.class);
			result = mapper.jobAdd(vacancy);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}



}
