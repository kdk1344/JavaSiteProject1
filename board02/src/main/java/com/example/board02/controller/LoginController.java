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
	
	//�α��� ȭ��
	@GetMapping("/loginForm")
	public String goLoginForm() {
		return "login";
	}
	
	//���� �Խ���
	@GetMapping("/contract")
	public String gocontract() {
		return "contract";
	}
	
	//�� ����
	@GetMapping("/inform")
	public String myInfoModify(HttpSession session, Model model) {
		return "inform";
	}
	
	//���� ����
	@PostMapping("/inform")
	public String modify(BoardMemberDTO boarddto){
		log.info("!!!!!");
		int result = boardmemberDAO.modifySave(boarddto);
		if(result==1) {
			return "redirect:inform";
		}
		return "redirect:inform";
	}
	
	
	//�� ����
	@GetMapping("/tongue")
	public String gotongue() {
		return "tongue";
	}
	
	//���� ����
	@GetMapping("/weather")
	public String goweather() {
		return "weather";
	}
	
	//��ȭ ����
	@GetMapping("/phone")
	public String gophone() {
		return "phone";
	}
	
	//��й�ȣ ã��
	@GetMapping("/findpw")
	public String findpw() {
		return "findpw";
	}
	
	//���� ȭ��
	@GetMapping("/list")
	public String golist() {
		return "board";
	}
	
	//���̵� ã��
	@GetMapping("/findid")
	public String findid() {
		return "findid";
	}
	
	//�α��� Ȯ��
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
	
	//ȸ�� ����
	@GetMapping("/join")
	public String gojoin() {
		return "join";
	}
	
	//ȸ�� �귣��
	@GetMapping("/brand")
	public String gobrand() {
		return "brand";
	}
	
	//�� �ȳ�
	@GetMapping("/guide")
	public String goguide() {
		return "guide";
	}
	
	//���� ����
	@GetMapping("/jinryo")
	public String gojinryo() {
		return "jinryo";
	}
	
	//�α� �ƿ� ���
	@GetMapping("/logout")
	public String gologout(HttpSession session) throws Exception {
		session.invalidate();
		log.info(session);
		return "redirect:/board02/loginForm";
	}
	
	//ȸ�� ���� ���
	@PostMapping("/join")
	public String join(BoardMemberDTO boardmemberDTO) {
		log.info("/join : " + boardmemberDTO);
		boardmemberDAO.join(boardmemberDTO);

		return "redirect:/board02/loginForm";
	}
	

}
