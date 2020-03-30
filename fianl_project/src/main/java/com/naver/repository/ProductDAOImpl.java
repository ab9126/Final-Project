package com.naver.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;
import com.naver.dto.QnaDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Inject
	private SqlSession session;

	private final String NS = "com.naver.product";

	@Override
	public void insert(ProductDTO dto) {
		session.insert(NS + ".insert", dto);
	}

	@Override
	public void addAttach(String filename, int p_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("att_filename", filename);
		map.put("att_fk_p_num", p_num);
		session.insert(NS + ".addAttach", map);
	}

	@Override
	public List<ProductDTO> list(PageTO to, Map<String, Object> map) {
		RowBounds rb = new RowBounds(to.getStartNum() - 1, to.getPerPage());
		return session.selectList(NS + ".list", map, rb);
	}

	@Override
	public int getAmount(Map<String, Object> map) {
		return session.selectOne(NS + ".getAmount", map);
	}

	@Override
	public ProductDTO read(String p_id) {
		return session.selectOne(NS + ".read", p_id);
	}

	@Override
	public void updateReadcnt(String p_id) {
		session.update(NS + ".updateReadcnt", p_id);
	}

	@Override
	public List<String> getAttach(String att_fk_p_num) {
		return session.selectList(NS + ".getAttach", att_fk_p_num);
	}

	@Override
	public void delete(String p_num) {
		session.delete(NS + ".delete", p_num);
	}

	@Override
	public ProductDTO updateui(String p_num) {
		return session.selectOne(NS + ".updateui", p_num);
	}

	@Override
	public void deleteFile(int p_num, String filename) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("att_fk_p_num", p_num);
		map.put("att_filename", filename);

		session.delete(NS + ".deleteFile", map);
	}

	@Override
	public void update(ProductDTO dto) {
		session.update(NS + ".update", dto);
	}

	@Override
	public void deleteAllFile(int p_num) {
		session.delete(NS + ".deleteAllFile", p_num);
	}

	@Override
	public void addcolor(String color, int p_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("color_fk_p_num", p_num);
		map.put("color_name", color);
		session.insert(NS+".addcolor", map);
	}

	@Override
	public void addsize(String size, int p_num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("size_fk_p_num", p_num);
		map.put("size_name", size);
		session.insert(NS+".addsize", map);
	}
	
	@Override
	public List<String> getcolor(String p_num) {
		return session.selectList(NS+".getcolor", p_num);
	}
	
	@Override
	public List<String> getsize(String p_num) {
		return session.selectList(NS+".getsize", p_num);
	}


	@Override
	public List<ProductDTO> hotlist(PageTO to, boolean hotitem) {
		return session.selectList(NS+".hotlist");
	}
}
