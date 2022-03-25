package com.spring.rounge.vo;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String password;
	private String name;
	private int photo;
	private String language;
}
