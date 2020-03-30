package com.naver.service;

import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;

public interface ProductService {
	void insert(ProductDTO dto);
	
	PageTO list(PageTO to, String p_catecode);

	ProductDTO read(String p_id);

	void delete(String p_id);

	ProductDTO updateui(String p_num);

	void deleteFile(int p_num, String filename);

	void update(ProductDTO dto);

	PageTO hotlist(PageTO to, boolean hotitem);

	
}
