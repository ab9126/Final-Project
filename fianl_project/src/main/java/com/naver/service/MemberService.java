package com.naver.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;

public interface MemberService {
	
	public void insert(MemberDTO dto);

	public MemberDTO read(String m_id);

	public abstract PageTO list(PageTO to);

	MemberDTO updateui(String m_id);

	public void update(MemberDTO dto);

	public abstract void delete(MemberDTO dto);
	
	//로그인
	public MemberDTO login(MemberDTO dto);
	//로그아웃
	public void logout(HttpSession session);

	public MemberDTO pwfind(Map<String, Object> map);

	public PageTO search(PageTO to, Map<String, Object> map);
	
}
