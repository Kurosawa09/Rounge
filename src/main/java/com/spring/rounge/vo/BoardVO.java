package com.spring.rounge.vo;

import lombok.Data;

@Data
public class BoardVO {
	String boardType;					// 게시판 이름
	int boardNum;				//글 일련번호
	String id;					//작성자 ID
	String title;				//글 제목
	String content;				//글 내용
	String inputDate;			//작성 날짜
	int likeCnt;				//추천수
	int status;
}
