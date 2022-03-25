package com.spring.rounge.repository;

import java.util.ArrayList;

import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;

public interface BoardMapper {
	int boardAdd(String boardName);					// 게시판 추가

	ArrayList<BoardNameVO> listBoard();				// 추가한 모든 게시판 이름 표시

	ArrayList<BoardVO> listBoardPost();				// 추가한 게시판과 메인 페이지의 각 게시판에 작성된 글 목록 표시
	
	ArrayList<BoardVO> boardPost(String boardName);	// 각 게시판 이름과 일치하는 게시글만 불러오기

	int boardWrite(BoardVO newBoard);				// 글 쓰기

	BoardVO readBoard(int boardNum);				// 글 읽기
	
	int like(int boardNum);							// 추천

//	int deleteBoard(int boardNum);

//	int updateBoard(BoardVO newBoard);
}
