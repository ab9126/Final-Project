package com.naver.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;


import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession session;
	private final String NS = "com.naver.member";
	
	@Override
	public List<MemberDTO> list(PageTO to) {
		RowBounds rb = new RowBounds(to.getStartNum()-1, to.getPerPage());

		return session.selectList(NS+".list", null, rb);
	}

	@Override
	public int getamount() {
		
		return session.selectOne(NS+".getamount");
	}

	@Override
	public void insert(MemberDTO dto) {
		
		session.insert(NS + ".insert", dto);

	}

	@Override
	public void delete(MemberDTO dto) {
		
		session.delete(NS + ".delete", dto);

	}

	@Override
	public MemberDTO login(MemberDTO dto) {
	
		return session.selectOne(NS + ".login", dto);
	}

	@Override
	public void update(MemberDTO dto) {
		session.update(NS + ".update", dto);

	}

	@Override
	public MemberDTO read(String m_id) {
		return session.selectOne(NS+".read", m_id);
	}

	@Override
	public int getAmount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO pwfind(Map<String, Object> map) {
		return session.selectOne(NS + ".pwfind", map);
	}

	@Override
	public PageTO search(PageTO to , Map<String, Object> map) {
		RowBounds rb = new RowBounds(to.getStartNum() - 1, to.getPerPage());
		String search = to.getSearch();
		String selectoption = (String)map.get("selectoption");
		List<MemberDTO> mlist = null;
		
		switch (selectoption) {
		case "all":
			mlist = session.selectList(NS + ".selall", search, rb);
			break;
		case "m_id":
			mlist = session.selectList(NS + ".selm_id", search, rb);
			break;
		case "m_name":
			mlist = session.selectList(NS + ".selm_name", search, rb);
			break;
		case "m_email":
			mlist = session.selectList(NS + ".selm_email", search, rb);
			break;
		default:
			break;
		}
		to.setMlist(mlist);
		return to;
	}
}
