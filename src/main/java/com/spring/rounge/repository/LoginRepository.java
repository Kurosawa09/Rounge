package com.spring.rounge.repository;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spring.rounge.vo.UserDetailsVO;

@Service("loginService")
public class LoginRepository implements UserDetailsService{	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		ArrayList<String> authList = new ArrayList<String>();
		LoginMapper dao = sqlSession.getMapper(LoginMapper.class);
		
		UserDetailsVO userDetailsVO = dao.selectUser(username);
		authList = dao.getAuthList(username);
		
		if (userDetailsVO == null) { //User을 찾지 못했을 경우
			throw new UsernameNotFoundException(username);
		}
		else {
			userDetailsVO.setAuthority(authList);
		}
		
		return userDetailsVO; //완전한 UserDetails 객체
	}
}