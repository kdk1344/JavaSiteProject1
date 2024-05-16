package com.example.board02.domain.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.BoardMemberDTO;



@Repository
public interface BoardMemberDAO {
	public void join(BoardMemberDTO boardmemberDTO);
	public int loginMember(String id, String pw);
	public int modifySave(BoardMemberDTO boardmemberDTO);
}
