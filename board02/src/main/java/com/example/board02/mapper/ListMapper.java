package com.example.board02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardMemberDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;

import lombok.extern.log4j.Log4j;

@Mapper
public interface ListMapper {
	public List<BoardVO> getList(Criteria criteria);
	public void insert(BoardDTO board);
	public BoardVO read(Long bno);
	public int delete(Long bno);
	public int update(BoardVO board);
	public int getTotal(Criteria criteria);
	public List<FileVO> getFiles(Long bno);
	public void reply_insert(BoardVO board);
	public BoardVO selectRSI(int root);
	public int updateStep(BoardVO board);
}
