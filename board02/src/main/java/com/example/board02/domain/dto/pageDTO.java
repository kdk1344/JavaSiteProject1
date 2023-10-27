package com.example.board02.domain.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class pageDTO {
	private int startPage;
	private int endPage;
	private int realEnd;
	private boolean prev, next;
	
	private int total;
	public pageDTO(int total, Criteria criteria) {
		this.total = total;
		this.criteria = criteria;
		
		this.endPage = (int)(Math.ceil(criteria.getPageNum() / (double)criteria.getAmount()) * criteria.getAmount());
		this.startPage = endPage-(criteria.getAmount() -1);
		this.realEnd = (int)Math.ceil( total *1.0 / criteria.getAmount());
		
		if (this.realEnd < this.endPage) {
			this.endPage = this.realEnd;
		}
		
		this.prev = startPage >1;
		
		this.next = this.endPage < this.realEnd;
	}
	private Criteria criteria;
}
