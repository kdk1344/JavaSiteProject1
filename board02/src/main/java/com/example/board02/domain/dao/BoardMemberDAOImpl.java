package com.example.board02.domain.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardMemberDTO;
import com.example.board02.mapper.BoardMapper;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j

public class BoardMemberDAOImpl implements BoardMemberDAO{

	@Autowired
	BoardMapper boardmapper;
	
	private static final String namespace="com.example.board02.mapper.BoardMapper";
	


	@Override
	public void join(BoardMemberDTO boardmemberDTO) {
		boardmapper.insert(boardmemberDTO);
	}

	@Override
	public int loginMember(String id, String pw){
		BoardMemberDTO dto = boardmapper.read(id);
		if(dto != null) {
			if(pw.equals(dto.getPw())) {
				return 0;
			}
		}
		return 1;

	}

	@Override
	public int modifySave(BoardMemberDTO boardmemberDTO) {
		int result = 0;          
		try {
			result = boardmapper.modifySave(boardmemberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info(result);
		return result;
	}


	
	
	
}
