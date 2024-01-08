package com.example.board02.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.board02.domain.dao.BoardMemberDAO;
import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardMemberDTO;
import com.example.board02.domain.dto.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BOOKINGMapperTests {
	@Autowired
	private BookingMapper bm;
	
//	@Test
//	public void join() {
//		BoardMemberDTO memberFormDto = new BoardMemberDTO();
//	    memberFormDto.setName("È«±æµ¿");
//	    memberFormDto.setId("ararar");
//	    memberFormDto.setPassword("12345");
//	    memberFormDto.setGender("³²¼º");
//	    memberFormDto.setEmail("test@email.com");
//	    boardMapper.insert(memberFormDto);
//
//}
	@Test
	public void aaa() {
		bm.bookingInfo("sec");
	}

	}
