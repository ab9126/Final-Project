package com.naver.service;

import java.util.List;

import com.naver.dto.ReplyDTO;

public interface ReplyService {
	
	public abstract void insert(ReplyDTO dto);

	public abstract List<ReplyDTO> list(Integer p_num);

	public abstract void delete(int r_num);

	public abstract void update(ReplyDTO dto);

	
}
