package com.example.board02.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;
import com.example.board02.domain.dto.pageDTO;
import com.example.board02.domain.dao.BoardDAO;

import lombok.extern.log4j.Log4j;

/*
 * Task			URL						Method			Parameter			Form						URL 이동
 * 
 * 전체 목록		/board/list				GET										
 * 등록 처리		/board/register		POST			모든 항목				입력화면 필요			이동
 * 조회			/board/read			GET				bno												
 * 삭제 처리		/board/remove		GET				bno					입력화면 필요			이동
 * 수정 처리		/board/modify		POST			모든 항목				입력화면 필요			이동
 */

@Controller
@Log4j
@RequestMapping("/board02/*")
public class BoardController {
	@Autowired
	private BoardDAO boardService;
	
	@GetMapping("/sangdam")
	public String list(Criteria criteria, Model model) {
		log.info("/sangdam");
		model.addAttribute("boardList", boardService.getList(criteria));
		model.addAttribute("pageDTO", new pageDTO(boardService.getTotal(criteria), criteria));
		return "sangdam";
	}
	
	@PostMapping("/register")
	public String register(BoardDTO boardDTO, RedirectAttributes rttr) {
		log.info("/register : " + boardDTO);
		boardService.register(boardDTO);
		
//		Flash라는 영역은 Session에 생기고, redirect로 전송할 때 request영역이 초기화 된다.
//		초기화 되기 전에 Flash영역에 데이터를 저장해놓고, 초기화된 후 Flash영역에서 데이터를 가지고 온다.
//		데이터를 가져왔다면, Flash 영역에 있던 데이터는 없어진다.
		rttr.addFlashAttribute("bno", boardDTO.getBno());
		log.info(boardDTO);
//		redirect로 전송할 때에는 경로 앞에 "redirect:"을 붙여준다.
		return "redirect:/board02/sangdam";
	}
	
	@GetMapping({"/read"})
	public String read(Criteria criteria, Long bno, HttpServletRequest request, Model model) {
		String url = request.getRequestURI();
		log.info(url.substring(url.lastIndexOf("/")) + " : " + bno);
		model.addAttribute("board",  boardService.get(bno));
		return "read";
	}
	
	@GetMapping({"/modify"})
	public String modify(Criteria criteria, Long bno, HttpServletRequest request, Model model) {
		String url = request.getRequestURI();
		log.info(url.substring(url.lastIndexOf("/")) + " : " + bno);
		log.info(boardService.get(bno));
		model.addAttribute("board",  boardService.get(bno));
		return "modify";
	}
	
	@GetMapping("/remove")
	public String remove(Long bno, RedirectAttributes rttr) {
		log.info("/remove : " + bno);
		
		if(boardService.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board02/sangdam";
	}
	
	@PostMapping("/modify")
	public String modify(Criteria criteria, BoardVO boardVO, RedirectAttributes rttr) {
		log.info("/modify : " + boardVO);
		if(boardService.modify(boardVO)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", criteria.getPageNum());
		rttr.addAttribute("type", criteria.getType());
		rttr.addAttribute("keyword", criteria.getKeyword());

		return "redirect:/board02/sangdam";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	//첨부파일
	@GetMapping(value="/files", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<FileVO> getFiles(Long bno){
		return boardService.getFiles(bno);
	}
	
	//답글쓰기
	
	@GetMapping("/answer")
	public String answer(Model model, Long bno) {
		model.addAttribute("board",  boardService.get(bno));
		log.info(boardService.get(bno));
		return "answer";
	}
	
	@PostMapping("/answer")
	public String answer1(BoardVO board, HttpSession session) {
		log.info("/reply : " + board);
		boardService.reply(board);
		return "redirect:/board02/sangdam";
	}
	

}