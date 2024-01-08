package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.BookingDTO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;
import com.example.board02.mapper.BoardMapper;
import com.example.board02.mapper.BookingMapper;
import com.example.board02.mapper.ListMapper;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j
public class BookingDAOImpl implements BookingDAO {
	
	@Autowired
	BookingMapper bookmapper;

	@Override
	public void bookingDo(BookingDTO bookingDto) {
		try {
			bookmapper.bookingDo(bookingDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public BookingDTO bookingInfo(String userId) {
		BookingDTO dto = null;
		try {
			dto = bookmapper.bookingInfo(userId);
			log.info(dto);
		} catch (Exception e) {
			log.info("dto");
			e.printStackTrace();
		}
		return dto;
	}
	
	@Override
	public String selectId(String id) {
		log.info("Service :: selectId...................");
		return bookmapper.selectId(id);
	}

	@Override
	public boolean bookDelete(String id) {
		log.info("id test...");
		return bookmapper.bookingdelete(id) != 0;
	}



}
