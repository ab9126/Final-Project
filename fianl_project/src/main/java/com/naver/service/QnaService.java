package com.naver.service;

import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;

public interface QnaService {
	PageTO list(PageTO to);
	
	void insert(QnaDTO dto);
	
	QnaDTO read(int q_num);
	
	void reply(QnaDTO dto);
	
	void deleteFile(int q_num, String filename);
	
	void delete(int q_num);

	void update(QnaDTO qdto);

	PageTO search(String selectoption, PageTO to);
	
}
