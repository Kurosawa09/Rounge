package com.spring.rounge.repository;

import com.spring.rounge.vo.MemberVO;

public interface MemberMapper {

	int join(MemberVO newMember);

	int auth(String id);
}
