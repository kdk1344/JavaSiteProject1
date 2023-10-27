package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardMemberDTO;



@Repository
public interface CheckDAO {
	public BoardMemberDTO findId(BoardMemberDTO boardmemberdto)throws Exception;
	public void findIdCheck(BoardMemberDTO boardmemberdto)throws Exception;
	public void pwdUpdate(BoardMemberDTO boardmemberdto)throws Exception;
	public int pwdCheck(BoardMemberDTO boardmemberdto)throws Exception;
}
