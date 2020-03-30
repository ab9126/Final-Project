package com.naver.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.dto.ReplyDTO;

@Repository
public class ReplyDAOimpl implements ReplyDAO{
	
	@Autowired
	SqlSession session;
	private final String NS = "com.naver.reply";
	
	@Override
	public void insert(ReplyDTO rdto) {
		System.out.println(rdto);
		session.insert(NS+".insert", rdto);		
	}

	@Override
	public List<ReplyDTO> list(Integer q_num) {
		return session.selectList(NS+".list", q_num);
	}

	@Override
	public void delete(int r_num) {
		session.delete(NS+".delete", r_num);		
	}

	@Override
	public void deleteAllreply(int r_fk_q_num) {
		session.delete(NS+".deleteAllreply", r_fk_q_num);
	}
	
	@Override
	public void update(ReplyDTO rdto) {
		session.update(NS+".update", rdto);		
	}

	@Override
	public void deleteByp_num(int p_num) {
//		session.delete(NS+".deleteByBno", bno);		
	}



}
