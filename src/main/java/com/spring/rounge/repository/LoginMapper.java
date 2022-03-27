package com.spring.rounge.repository;

import java.util.ArrayList;

import com.spring.rounge.vo.UserDetailsVO;

public interface LoginMapper {
	
	public UserDetailsVO selectUser(String username);
	
	public ArrayList<String> getAuthList(String username);
}