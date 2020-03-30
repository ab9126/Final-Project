package com.naver.service;

import com.naver.dto.PageTO;
import com.naver.dto.ReviewDTO;

public interface ReviewService {

	void insert(ReviewDTO dto);

	PageTO list(Integer p_num, PageTO to);

	void delete(int r_num);

}
