package com.naver.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;
import com.naver.repository.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO mdao;


	@Override
	public void insert(MemberDTO dto) {
		mdao.insert(dto);

	}

	@Override
	public PageTO list(PageTO to) {
		int amount = mdao.getAmount();
		to.setAmount(amount);
		List<MemberDTO> list = mdao.list(to);
		to.setMlist(list);
		return to;
	}

	@Override
	public void delete(MemberDTO dto) {

		mdao.delete(dto);

	}

	@Override
	public MemberDTO login(MemberDTO dto) {
	
		return mdao.login(dto);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();

	}

	@Override
	public void update(MemberDTO dto) {
		System.out.println(dto);
		mdao.update(dto);

	}

	@Override
	public MemberDTO read(String m_id) {
		MemberDTO dto = mdao.read(m_id);
		
		return dto;
	}

	@Override
	public MemberDTO updateui(String m_id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public MemberDTO pwfind(Map<String, Object> map) {
		return mdao.pwfind(map);
	}

	@Override
	public PageTO search(PageTO to , Map<String, Object> map) {
		return mdao.search(to , map);
	} 
	
}
