package com.naver.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	@Inject
	private SqlSession session;

	private final String NS = "com.naver.qna";

	@Override
	public List<QnaDTO> list(PageTO to) {
		RowBounds rb = new RowBounds(to.getStartNum() - 1, to.getPerPage());
		
		return session.selectList(NS + ".list", null, rb);
	}

	@Override
	public int getAmount() {
		return session.selectOne(NS + ".getAmount");
	}

	@Override
	public int getQnum() {
		return session.selectOne(NS + ".getQnum");
	}

	@Override
	public void insert(QnaDTO qdto) {
		System.out.println("qdto=?" + qdto);
		session.insert(NS + ".insert", qdto);
	}

	@Override
	public QnaDTO read(int q_num) {
		return session.selectOne(NS + ".read", q_num);
	}

	@Override
	public void reply(QnaDTO dto) {
		session.insert(NS + ".reply", dto);
	}

	@Override
	public void icreaseRepStep(QnaDTO dto) {
		session.update(NS + ".icreaseRepStep", dto);
	}

	@Override
	public QnaDTO oridto(int q_num) {
		return session.selectOne(NS + ".oridto", q_num);
	}

	@Override
	public void deleteFile(int q_num, String filename) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("patt_fk_p_num", q_num);
		map.put("patt_filename", filename);

		session.delete(NS + ".deleteFile", map);

	}

	@Override
	public void addAttach(String filename, int q_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("att_filename", filename);
		map.put("att_fk_q_num", q_num);
		session.insert(NS + ".addAttach", map);

	}

	@Override
	public List<String> getAttach(int att_fk_q_num) {
		return session.selectList(NS + ".getAttach", att_fk_q_num);
	}

	@Override
	public void delete(int q_num) {
		session.delete(NS + ".delete", q_num);

	}

	@Override
	public void deleteFileAll(int q_num) {
		session.delete(NS + ".deleteFileAll", q_num);

	}

	@Override
	public void update(QnaDTO qdto) {
		session.update(NS + ".update", qdto);

	}

	@Override
	public PageTO search(String selectoption, PageTO to) {
		RowBounds rb = new RowBounds(to.getStartNum() - 1, to.getPerPage());
		String search = to.getSearch();
		
		List<QnaDTO> qlist = null;
		switch (selectoption) {
		case "all":
			qlist = session.selectList(NS + ".selall", search, rb);
			break;
		case "q_title":
			qlist = session.selectList(NS + ".seltitle", search, rb);
			break;
		case "q_content":
			qlist = session.selectList(NS + ".selcontent", search, rb);
			break;
		case "q_fk_m_id":
			qlist = session.selectList(NS + ".selmid", search, rb);
			break;
		default:
			break;
		}
		to.setQlist(qlist);
		return to;
	}
}
