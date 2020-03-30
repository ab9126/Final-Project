package com.naver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.naver.dto.ReplyDTO;
import com.naver.repository.ReplyDAO;

@Service
public class ReplyServiceimpl implements ReplyService {
	
	@Autowired
	private ReplyDAO rdao;
	
	
	@Override
	public void insert(ReplyDTO rdto) {
		rdao.insert(rdto);		
	}

	@Override
	public List<ReplyDTO> list(Integer q_num) {
		return rdao.list(q_num);
	}

	@Override
	public void delete(int r_num) {
		rdao.delete(r_num);
	}

	@Override
	public void update(ReplyDTO rdto) {
		rdao.update(rdto);		
	}

}
