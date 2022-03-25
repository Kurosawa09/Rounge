package com.spring.rounge.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.rounge.service.BoardService;
import com.spring.rounge.vo.BoardNameVO;
import com.spring.rounge.vo.BoardVO;
import com.spring.rounge.vo.MemberVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService service;

	// 게시판 추가 GET
	@RequestMapping(value = "/boardAdd", method = RequestMethod.GET)
	public String boardAdd() {
		return "board/boardAdd";
	}
	
	// 게시판 추가 POST
	@RequestMapping(value = "/boardAdd", method = RequestMethod.POST)
	public String boardAdd(String boardName, HttpSession session) {
		logger.info("boardAdd 메소드 실행(GET)");

		logger.info("boardName : {}", boardName);

		boolean result = service.boardAdd(boardName);
		String returnUrl = null;
		if (result) {
			logger.info("새 게시판 추가 성공");
			returnUrl = "redirect:/board/board1";
		} else {
			logger.info("게시글 작성 실패");
			returnUrl = "board/listBoard";
		}

		return returnUrl;
	}
	
	// 추가한 게시판과 메인 페이지의 각 게시판에 작성된 글 목록 표시 
	@RequestMapping(value = "/board1", method = RequestMethod.GET)
	public String board1(Model model)
	{
		logger.info("board1 메소드 실행(GET)");

		ArrayList<BoardNameVO> listBoard = service.listBoard();
		model.addAttribute("listBoard", listBoard);
		
		ArrayList<BoardVO> listBoardPost = service.listBoardPost();
		logger.info("listBoardPost : {}", listBoardPost);
		model.addAttribute("listBoardPost", listBoardPost);
		return "board/board1";
	}
	
	
	// 각 게시판 이름과 일치하는 게시글만 불러오기
	@RequestMapping(value = "/boardName", method = RequestMethod.GET)
	public String boardName(String boardName, Model model) {
		logger.info("boardName 메소드 실행(GET)");

		// 각 게시판 이름에 맞는 게시글만 가져오기
		ArrayList<BoardVO> boardPost = service.boardPost(boardName);
		logger.info("boardList : {}", boardPost);

		model.addAttribute("boardPost", boardPost);
		model.addAttribute("boardName", boardName);

		return "board/boardName";
	}

	// 글 쓰기 GET
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public String boardWrite(String boardName, Model model) {
		logger.info("boardWrite 메소드 실행(GET)");

		logger.info("boardName : {}", boardName);
		model.addAttribute("boardName", boardName);

		return "board/boardWrite";
	}

	// 글 쓰기 POST
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public String boardWrite(String boardName, BoardVO newBoard, HttpSession session, Model model) {
		logger.info("boardWrite 메소드 실행(POST)");

		logger.info("newBoard : {}", newBoard);
		
		String loginId = (String) session.getAttribute("loginId");
		logger.info("boardName : {}", boardName);

		boolean result = service.boardWrite(newBoard, loginId, boardName);
		String returnUrl = null;
		if (result) {
			logger.info("게시글 작성 성공");
			returnUrl = "redirect:/board/boardName?boardName=" + boardName;
		} else {
			logger.info("게시글 작성 실패");
			returnUrl = "board/boardWriteWritedadsds";
		}

		return returnUrl;
	}

	// 글 읽기
	@RequestMapping(value = "/readBoard", method = RequestMethod.GET)
	public String readBoard(int boardNum, HttpSession session, Model model) {
		logger.info("readBoard 메소드 실행(GET)");
		logger.info("boardNum : {}", boardNum);

		BoardVO post = service.readBoard(boardNum);
		logger.info("post : {}", post);

		model.addAttribute("post", post);
		model.addAttribute("boardName", post.getBoardType());

		return "board/readBoard";
	}

	// 추천
	@ResponseBody
	@RequestMapping (value="/like", method=RequestMethod.GET)
	public String like(int boardNum123) {

		int likeCnt = service.like(boardNum123);
		logger.info("{}", likeCnt);
		
		return Integer.toString(likeCnt);
	}
	
//	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
//	public String deleteBoard(int boardNum568,  HttpSession session)
//	{
//		logger.info("deleteBoard 메소드 실행(GET)");
//		logger.info("boardNum : {}", boardNum568);
//		
//		String loginId = (String) session.getAttribute("loginId");
//
//		boolean result = service.deleteBoard(boardNum568);
//		String returnUrl = null;
//		if(result)
//		{
//			logger.info("게시글 삭제 성공");
//			returnUrl = "redirect:/board/boardList?id12=" + loginId;
//		}
//		else
//		{
//			logger.info("게시글 삭제 실패");
//		}
//		
//		return returnUrl;
//	}
//
//	
//	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
//	public String updateBoard(int boardNum, Model model) {
//		
//		logger.info("updateBoard 메소드 실행(GET)");
//		logger.info("boardNum : {}", boardNum);
//		
////		String loginId = (String) session.getAttribute("loginId");
//		
//		BoardVO board = service.readBoard(boardNum);
//		logger.info("board : {}", board);
//		
////		//본인 글이 아니면 메인화면으로 이동
////		if (!loginId.equals(board.getId())) {
////			return "redirect:/";
////		}
//		
//		model.addAttribute("board", board);
//		
//		return "board/updateBoard";
//	}
//	
//	@RequestMapping (value="/updateBoard", method=RequestMethod.POST)
//	public String updateBoard(BoardVO newBoard, HttpSession session) {
//		
//		String loginId = (String) session.getAttribute("loginId");
//		
//		boolean result = service.updateBoard(newBoard, loginId);
//		logger.info("newBoard : {}", newBoard);
//		logger.info("{}", result);
//		
//		String returnUrl = null;
//
//		if (result) {
//			logger.info("게시글 수정 성공");
//			returnUrl = "redirect:/board/boardList?id12=" + loginId;
//		} else {
//			logger.info("게시글 수정 실패");
//			returnUrl = "redirect:/board/boardList?id12=" + loginId;
//		}
//
//		return returnUrl;
//	}
}
