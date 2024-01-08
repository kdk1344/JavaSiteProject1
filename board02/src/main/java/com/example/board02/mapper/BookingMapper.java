package com.example.board02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.board02.domain.dto.BoardMemberDTO;
import com.example.board02.domain.dto.BookingDTO;

import lombok.extern.log4j.Log4j;

@Mapper
public interface BookingMapper {
	
	public void bookingDo(BookingDTO bookingDto);
	public BookingDTO bookingInfo(String userId);
	public String selectId(String id);
	public int bookingdelete(String id);
}
