package com.spring.rounge.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.rounge.repository.BoardRepository;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;

@Service
public class BoardService {
	@Autowired 
	private BoardRepository repository;

	public ArrayList<BoardVO> boardPost(String boardName) {
		return repository.boardPost(boardName);
	}

	public boolean boardWrite(BoardVO newBoard, String loginId, String boardName) {
		newBoard.setId(loginId);
		newBoard.setBoardType(boardName);
		return repository.boardWrite(newBoard) > 0;
	}


	public BoardVO readBoard(int boardNum) {
		return repository.readBoard(boardNum);
	}

//	public boolean deleteBoard(int boardNum3) {
//		return repository.deleteBoard(boardNum3) > 0;
//	}
//
//	public boolean updateBoard(BoardVO newBoard, String loginId) {
//		newBoard.setId(loginId);
//		
//		return repository.updateBoard(newBoard) > 0;
//	}

	public int like(int boardNum) {
		return repository.like(boardNum);
	}

	public boolean boardAdd(String boardName) {
		return  repository.boardAdd(boardName) > 0;
	}

	public ArrayList<BoardNameVO> listBoard() {
		return  repository.listBoard();
	}


	public ArrayList<BoardVO> listBoardPost() {
		return repository.listBoardPost();
		}

	
}
