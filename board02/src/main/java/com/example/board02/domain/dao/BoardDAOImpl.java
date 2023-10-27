package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardDTO;
import com.example.board02.domain.dto.BoardVO;
import com.example.board02.domain.dto.Criteria;
import com.example.board02.domain.dto.FileVO;
import com.example.board02.mapper.BoardMapper;
import com.example.board02.mapper.ListMapper;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	ListMapper listmapper;

	@Override
	public void register(BoardDTO board) {
		listmapper.insert(board);
	}

	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		return listmapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		return listmapper.update(board) != 0;
	}

	@Override
	public boolean remove(Long bno) {
		return listmapper.delete(bno) != 0;
	}

	@Override
	public List<BoardVO> getList(Criteria criteria) {
		return listmapper.getList(criteria);
	}
	
	@Override
	public int getTotal(Criteria criteria) {
		return listmapper.getTotal(criteria);
	}
	
	@Override
	public List<FileVO> getFiles(Long bno) {
		return listmapper.getFiles(bno);
	}

	@Override
	public void reply(BoardVO board) {
		BoardVO parent = listmapper.selectRSI(board.getRoot());
		log.info(parent);
		listmapper.updateStep(parent);
		board.setRoot(parent.getRoot());
		board.setStep(parent.getStep()+1);
		board.setIndent(parent.getIndent()+1);
		log.info(board);
		listmapper.reply_insert(board);

	}

}
