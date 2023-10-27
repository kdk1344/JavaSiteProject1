package com.example.board02.domain.dto;

import java.util.List;

import lombok.Data;

@Data
public class BoardDTO {
	private Long bno;
	private int root;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String updateDate;
	private List<FileVO> files;
	private int step;
	private int indent;
}
