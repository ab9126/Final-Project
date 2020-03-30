package com.naver.repository;

import java.util.List;
import java.util.Map;

import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;

public interface MemberDAO {
	
	//페이징
	public abstract List<MemberDTO> list(PageTO to);	
	public abstract int getamount();
	
	//회원자세히 보기
	public void insert(MemberDTO dto);


	public abstract void delete(MemberDTO dto);

	public abstract MemberDTO login(MemberDTO dto);
	
	public void update(MemberDTO dto);
	
	public MemberDTO read(String m_id);
	
	public abstract int getAmount();
	
	public MemberDTO pwfind(Map<String, Object> map);
	
	public abstract PageTO search(PageTO to, Map<String, Object> map);
}

