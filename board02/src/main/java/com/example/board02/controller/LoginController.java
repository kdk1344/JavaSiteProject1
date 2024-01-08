package com.example.board02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.board02.domain.dao.BoardMemberDAO;
import com.example.board02.domain.dao.CheckDAO;
import com.example.board02.domain.dto.BoardMemberDTO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board02/*")
public class LoginController {
	
	@Autowired
	private BoardMemberDAO boardmemberDAO;
	
	
	@GetMapping("/loginForm")
	public String goLoginForm() {
		return "login";
	}
	
	@GetMapping("/contract")
	public String gocontract() {
		return "contract";
	}
	
	
	
	@GetMapping("/tongue")
	public String gotongue() {
		return "tongue";
	}
	
	@GetMapping("/weather")
	public String goweather() {
		return "weather";
	}
	
	@GetMapping("/phone")
	public String gophone() {
		return "phone";
	}
	
	@GetMapping("/findpw")
	public String findpw() {
		return "findpw";
	}
	
	@GetMapping("/list")
	public String golist() {
		return "board";
	}
	
	@GetMapping("/findid")
	public String findid() {
		return "findid";
	}
	
	@PostMapping("/login")
	public String login(BoardMemberDTO boarddto, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		HttpSession session = req.getSession();
		int board = boardmemberDAO.loginMember(boarddto.getId(), boarddto.getPw());
		if(board == 0) {
				log.info("check1");
				log.info(boarddto.getId());
				session.setAttribute("id", boarddto.getId());
				return "redirect:/board02/list";}
		else {
				int result = 0;
				rttr.addFlashAttribute("result", result);
				log.info("failcheck2!!");
				return "redirect:/board02/loginForm";
			}
		}
	
	@GetMapping("/join")
	public String gojoin() {
		return "join";
	}
	
	@GetMapping("/brand")
	public String gobrand() {
		return "brand";
	}
	
	
	
	@GetMapping("/guide")
	public String goguide() {
		return "guide";
	}
	
	@GetMapping("/jinryo")
	public String gojinryo() {
		return "jinryo";
	}
	
	@GetMapping("/logout")
	public String gologout(HttpSession session) throws Exception {
		session.invalidate();
		log.info(session);
		return "redirect:/board02/loginForm";
	}
	
	@PostMapping("/join")
	public String join(BoardMemberDTO boardmemberDTO) {
		log.info("/join : " + boardmemberDTO);
		boardmemberDAO.join(boardmemberDTO);
		
//		Flash��� ������ Session�� �����, redirect�� ������ �� request������ �ʱ�ȭ �ȴ�.
//		�ʱ�ȭ �Ǳ� ���� Flash������ �����͸� �����س���, �ʱ�ȭ�� �� Flash�������� �����͸� ������ �´�.
//		�����͸� �����Դٸ�, Flash ������ �ִ� �����ʹ� ��������.
//		redirect�� ������ ������ ��� �տ� "redirect:"�� �ٿ��ش�.
		return "redirect:/board02/loginForm";
	}
	
//	@PostMapping("/login")
//	public String login(@ModelAttribute("id") String id, String pw) {
//		if(id.equals("admin")) {
//			return "admin";
//		}
//		return "user";
//	}
}
