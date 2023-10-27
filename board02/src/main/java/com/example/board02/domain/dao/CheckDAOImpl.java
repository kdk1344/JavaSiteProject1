package com.example.board02.domain.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardMemberDTO;
import com.example.board02.mapper.BoardMapper;
import com.example.board02.mapper.CheckMapper;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j
public class CheckDAOImpl implements CheckDAO{
	
	@Autowired
	CheckMapper checkmapper;

	@Override
	public BoardMemberDTO findId(BoardMemberDTO boardmemberdto) throws Exception {
		return checkmapper.findID(boardmemberdto);
	}

	@Override
	public void findIdCheck(BoardMemberDTO boardmemberdto) throws Exception {
		
	}

	@Override
	public int pwdCheck(BoardMemberDTO boardmemberdto) throws Exception {
		return checkmapper.pwdCheck(boardmemberdto);
	}

	@Override
	public void pwdUpdate(BoardMemberDTO boardmemberdto) throws Exception {
		String pw = boardmemberdto.getPw();
		boardmemberdto.setPw(pw); 
		checkmapper.pwdUpdate(boardmemberdto);
	}


	
	
	
}
