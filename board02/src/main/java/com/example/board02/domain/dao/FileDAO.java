package com.example.board02.domain.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.board02.domain.dto.FileDTO;
import com.example.board02.mapper.FileMapper;

@Repository
public class FileDAO {
	
	@Autowired
	public FileMapper fileMapper;
	
	public void register(FileDTO file) {
		fileMapper.insert(file);
	}
}
