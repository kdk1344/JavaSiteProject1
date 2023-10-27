package com.example.board02.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.board02.domain.dao.CheckDAO;
import com.example.board02.domain.dto.BoardMemberDTO;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/board02/*")
public class CheckController {
	
	@Autowired
	private CheckDAO checkdao;
	
	
	@PostMapping("/findid")
	public String searchId(HttpServletRequest request, Model model,BoardMemberDTO boardmemberdto,
			@RequestParam String email) {
		try {
			boardmemberdto.setEmail(email);
			BoardMemberDTO id = checkdao.findId(boardmemberdto);
			log.info(id);

			model.addAttribute("findId", id);

		} catch (Exception e) {
			model.addAttribute("msg", "������ �߻��Ǿ����ϴ�.");
			e.printStackTrace();
		}
		return "idresult";
	}
	
	@PostMapping("/findpw")
	public String findPwdCheck(HttpServletRequest request, Model model,
			@RequestParam String id, @RequestParam String email,
			BoardMemberDTO boardmemberdto) {
		try {
			boardmemberdto.setId(id);
			boardmemberdto.setEmail(email);
			int search = checkdao.pwdCheck(boardmemberdto);

			if(search == 0) {
				model.addAttribute("msg", "���Ե� ������ �߸��Ǿ����ϴ�. �ٽ� �Է����ּ���.");
				log.info("no!!!");
			}else {
			
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			
			boardmemberdto.setPw(pw);
			checkdao.pwdUpdate(boardmemberdto);
			log.info(pw);
			model.addAttribute("newPwd", pw);
			}

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "������ �߻��Ǿ����ϴ�.");
		}
		return "findpw";
	}

}
