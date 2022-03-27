package com.spring.rounge.repository;

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

	public int auth(String id) {
		int result = 0;
		MemberMapper mapper = null;
		try {
			mapper = session.getMapper(MemberMapper.class);
			result = mapper.auth(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
