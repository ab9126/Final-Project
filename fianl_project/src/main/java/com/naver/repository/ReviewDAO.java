package com.naver.repository;

import java.util.List;

import com.naver.dto.PageTO;
import com.naver.dto.ReviewDTO;

public interface ReviewDAO {

	void insert(ReviewDTO dto);

	List<ReviewDTO> list(Integer p_num, PageTO to);

	void addAttach(String filename, int r_num);

	int getAmount();

	List<String> getAttach(int r_num);

	void delete(int r_num);

}
