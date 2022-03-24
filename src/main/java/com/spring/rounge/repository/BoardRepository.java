package com.spring.rounge.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.rounge.controller.BoardController;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;
import com.spring.rounge.vo.MemberVO;

@Repository
public class BoardRepository {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private SqlSession session;

	public ArrayList<BoardVO> boardPost(String boardName) {
		ArrayList<BoardVO> result = null;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.boardPost(boardName);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int boardWrite(BoardVO newBoard)
	{
		int result = 0;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.boardWrite(newBoard);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public BoardVO readBoard(int boardNum) 
	{
		BoardVO result = null;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.readBoard(boardNum);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;		
	}

//	public int deleteBoard(int boardNum5) {
//		int result = 0;
//		BoardMapper mapper = null;
//		
//		try {
//			mapper = session.getMapper(BoardMapper.class);
//			
//			result = mapper.deleteBoard(boardNum5);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return result;	
//	}
//
//	public int updateBoard(BoardVO newBoard) {
//		int result = 0;
//		BoardMapper mapper = null;
//		
//		try {
//			mapper = session.getMapper(BoardMapper.class);
//			
//			result = mapper.updateBoard(newBoard);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return result;
//	}

	

	public int like(int boardNum) {
		int result = 0;
		BoardMapper mapper = null;
			
		try {
			mapper = session.getMapper(BoardMapper.class);
				
			result = mapper.like(boardNum);
		} catch(Exception e) {
			e.printStackTrace();		
		}
			
		BoardVO board = mapper.readBoard(boardNum);
		logger.info("{}", board);

		result = board.getLikeCnt();

		return result;
	}

	public ArrayList<BoardNameVO> listBoard() {
		ArrayList<BoardNameVO> result = null;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.listBoard();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int boardAdd(String boardName) {
		int result = 0;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.boardAdd(boardName);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


	public ArrayList<BoardVO> listBoardPost() {
		ArrayList<BoardVO> result = null;
		BoardMapper mapper = null;
		
		try {
			mapper = session.getMapper(BoardMapper.class);
			
			result = mapper.listBoardPost();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
