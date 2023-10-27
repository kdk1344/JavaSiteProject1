package com.example.board02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.board02.domain.dto.BoardMemberDTO;

@Mapper
public interface CheckMapper {
	public BoardMemberDTO findID(BoardMemberDTO boardmemberDTO);
	public int pwdCheck(BoardMemberDTO boardmemberDTO);
	public int pwdUpdate(BoardMemberDTO boardmemberDTO);

}
