package com.spring.rounge.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.rounge.vo.MemberVO;

@Repository
public class MemberRepository {
	

	@Autowired
	private SqlSession session;
	
	public int join(MemberVO newMember) 
	{
		int result = 0;
		
		MemberMapper mapper = null;
		
		try {
			mapper = session.getMapper(MemberMapper.class);
			
			result = mapper.join(newMember);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public String login(MemberVO loginMember) 
	{
		String result = null;
		MemberMapper mapper = null;
		
		try {
			mapper = session.getMapper(MemberMapper.class);
			
			result = mapper.login(loginMember);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
