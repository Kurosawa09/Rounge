package com.spring.rounge.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.rounge.repository.MemberRepository;
import com.spring.rounge.vo.MemberVO;

@Service
public class MemberService {
	@Autowired 
	private MemberRepository repository;
	
	public boolean join(String id, String password, String name, int photo, String language) 
	{
		MemberVO newMember = new MemberVO();
		newMember.setId(id);
		newMember.setPassword(password);
		newMember.setName(name);
		newMember.setPhoto(photo);
		newMember.setLanguage(language);
		
		return repository.join(newMember) > 0;
	}

	public String login(String id, String password) {
		MemberVO loginMember = new MemberVO();
		loginMember.setId(id);
		loginMember.setPassword(password);
		return repository.login(loginMember);
	}
}
