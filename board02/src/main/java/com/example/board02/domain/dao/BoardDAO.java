package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;



@Repository
public interface BoardDAO {
	public void register(BoardDTO board);
	public BoardVO get(Long bno);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public List<BoardVO> getList(Criteria criteria);
	public int getTotal(Criteria criteria);
	public List<FileVO> getFiles(Long bno);
	public void reply(BoardVO board);
}
