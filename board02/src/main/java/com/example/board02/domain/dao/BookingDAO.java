package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.BookingDTO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;



@Repository
public interface BookingDAO {
	public void bookingDo(BookingDTO bookingDto);
	public BookingDTO bookingInfo(String userId); 
}
