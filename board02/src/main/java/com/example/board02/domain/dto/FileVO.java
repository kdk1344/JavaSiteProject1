package com.example.board02.domain.dto;

import lombok.Data;

@Data
public class FileVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;

}
