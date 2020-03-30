package com.naver.repository;

import java.util.List;
import java.util.Map;

import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;

public interface ProductDAO {
	
	void insert(ProductDTO dto);

	void addAttach(String filename, int p_num);

	List<ProductDTO> list(PageTO to, Map<String, Object> map);

	int getAmount(Map<String, Object> map);

	ProductDTO read(String p_num);

	void updateReadcnt(String p_num);

	List<String> getAttach(String p_num);

	void delete(String p_num);

	ProductDTO updateui(String p_num);

	void deleteFile(int p_num, String filename);

	void update(ProductDTO dto);

	void deleteAllFile(int p_num);

	void addsize(String size, int p_num);

	void addcolor(String color, int p_num);

	List<String> getsize(String p_num);

	List<String> getcolor(String p_num);

	List<ProductDTO> hotlist(PageTO to,boolean hotitem);

}
