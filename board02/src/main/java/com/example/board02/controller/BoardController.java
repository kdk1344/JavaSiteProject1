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

@Controller
@Log4j
@RequestMapping("/board02/*")
public class BoardController {
	@Autowired
	private BoardDAO boardService;
	
	//게시판 이동
	@GetMapping("/sangdam")
	public String list(Criteria criteria, Model model) {
		log.info("/sangdam");
		model.addAttribute("boardList", boardService.getList(criteria));
		model.addAttribute("pageDTO", new pageDTO(boardService.getTotal(criteria), criteria));
		return "sangdam";
	}
	
	//글 등록
	@PostMapping("/register")
	public String register(BoardDTO boardDTO, RedirectAttributes rttr) {
		log.info("/register : " + boardDTO);
		boardService.register(boardDTO);
		rttr.addFlashAttribute("bno", boardDTO.getBno());
		log.info(boardDTO);
		return "redirect:/board02/sangdam";
	}
	
	//글 읽기
	@GetMapping({"/read"})
	public String read(Criteria criteria, Long bno, HttpServletRequest request, Model model) {
		String url = request.getRequestURI();
		log.info(url.substring(url.lastIndexOf("/")) + " : " + bno);
		model.addAttribute("board",  boardService.get(bno));
		return "read";
	}
	
	//글 수정
	@GetMapping({"/modify"})
	public String modify(Criteria criteria, Long bno, HttpServletRequest request, Model model) {
		String url = request.getRequestURI();
		log.info(url.substring(url.lastIndexOf("/")) + " : " + bno);
		log.info(boardService.get(bno));
		model.addAttribute("board",  boardService.get(bno));
		return "modify";
	}
	
	//글 삭제
	@GetMapping("/remove")
	public String remove(Long bno, RedirectAttributes rttr) {
		log.info("/remove : " + bno);
		
		if(boardService.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board02/sangdam";
	}
	
	//글 수정
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