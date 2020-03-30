package com.naver.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.naver.dto.PageTO;
import com.naver.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	@Inject
	private SqlSession session;
	
	private final String NS = "com.naver.review";
	
	@Override
	public void insert(ReviewDTO dto) {
		session.insert(NS+".insert", dto);
	}
	
	@Override
	public void addAttach(String filename, int r_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("att_filename", filename);
		map.put("att_fk_r_num", r_num);
		session.insert(NS+".addAttach", map);
	}
	
	@Override
	public List<ReviewDTO> list(Integer p_num, PageTO to) {
		RowBounds rb = new RowBounds(to.getStartNum()-1, to.getPerPage());
		return session.selectList(NS+".list", p_num, rb);
	}
	
	@Override
	public int getAmount() {
		return session.selectOne(NS+".getAmount");
	}
	
	@Override
	public List<String> getAttach(int att_fk_r_num) {
		return session.selectList(NS+".getAttach", att_fk_r_num);
	}
	
	@Override
	public void delete(int r_num) {
		session.delete(NS+".delete", r_num);
	}
}
