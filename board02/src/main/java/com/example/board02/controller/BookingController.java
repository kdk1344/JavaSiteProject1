package com.example.board02.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.example.board02.domain.dto.BookingDTO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;
import com.example.board02.domain.dto.pageDTO;
import com.example.board02.domain.dao.BoardDAO;
import com.example.board02.domain.dao.BookingDAO;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/board02/*")
public class BookingController {
	@Autowired
	private BookingDAO bs;
	
	
	
	//예약
	
	@PostMapping("/contract")
	public String bookingDo(HttpSession session, BookingDTO bookingDto) {
		bs.bookingDo(bookingDto);
		return "redirect:/board02/contract";
	}
	
	@GetMapping("/mypage")
	public String gomypage(HttpSession session, Model model) throws Exception {
		String userId = (String) session.getAttribute("id");
		log.info(userId);
		model.addAttribute("booking", bs.bookingInfo(userId));
		log.info(bs.bookingInfo(userId));
		return "mypage";
	}
	
	//Id 중복 확인
		@PostMapping("/ConfirmId")
		public ResponseEntity<String> confirmId(String id) {
			log.info("ConfirmId.........");
			log.info("id : " + id);
			
			String time = bs.selectId(id);
			
			if(id.trim().isEmpty()) {
				log.info("id : " + id);
				time = "";
			} else {
				if (bs.selectId(id) != "") {
					log.info(time);
				} else {
					time = "";
				}
			}
			
			return new ResponseEntity<>(time, HttpStatus.OK);
		}
		
		@GetMapping("/bookDelete")
		public String bookDelete(String userId){
			log.info(userId + "third");
			bs.bookDelete(userId);
			return "redirect:/board02/mypage";
	}
}