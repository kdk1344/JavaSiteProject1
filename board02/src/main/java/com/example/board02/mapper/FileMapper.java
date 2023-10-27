package com.example.board02.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.board02.domain.dto.FileDTO;

@Mapper
public interface FileMapper {
	public void insert(FileDTO file);
}
