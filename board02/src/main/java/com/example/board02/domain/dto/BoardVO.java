package com.example.board02.domain.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BoardVO {
	private Long bno;
	private int root;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String updateDate;
	private int step;
	private int indent;
}
