package com.spring.rounge.vo;

import lombok.Data;

@Data
public class JobVO {
		int vacancyNum;  		     //채용 공고 번호  -> readJob
		String companyName ;         // 기업이름
		int vacancyCareer;	        //경력 설정
		String vacancyIndate; 		// 채용 공고 적성시간 
		String vacancyPeriod;  	    // 모집 기간
		String vacancyTitle;       	//채용 공고 제목
		String vacancyContent;	    //채용 공고 내용
		String originalFileName;   //사진 업로드
		String sacedFileName;      //사진 다운로드 파일명
}
