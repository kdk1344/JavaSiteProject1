package com.example.board02.domain.dto;

import java.util.List;

import lombok.Data;

@Data
public class BookingDTO {
	private int bookingId;
	private String userId;
	private String bookDate;
	private String bookname;
}
