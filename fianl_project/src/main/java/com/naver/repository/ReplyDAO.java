package com.naver.repository;

import java.util.List;

import com.naver.dto.ReplyDTO;

public interface ReplyDAO {
	
	public abstract void insert(ReplyDTO dto);

	public abstract List<ReplyDTO> list(Integer p_num);

	public abstract void delete(int r_num);

	public abstract void update(ReplyDTO dto);

	public abstract void deleteByp_num(int p_num);

	public abstract void deleteAllreply(int q_num);
}
