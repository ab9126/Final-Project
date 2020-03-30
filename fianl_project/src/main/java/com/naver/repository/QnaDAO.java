package com.naver.repository;

import java.util.List;
import java.util.Map;

import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;

public interface QnaDAO {
//	리스트
	List<QnaDTO> list(PageTO to);
	int getAmount();
	
//	등록
	void insert(QnaDTO dto);
	int getQnum();
	
//	삭제
	void delete(int q_num);
	
//	상세정보
	QnaDTO read(int q_num);

//	수정
	void update(QnaDTO qdto);

	
//	답글
	void reply(QnaDTO dto);
	void icreaseRepStep(QnaDTO dto);
	QnaDTO oridto(int q_num);
	
	//일부 사진삭제
	void deleteFile(int q_num, String filename);
	
	//전체 사진삭제
	void deleteFileAll(int q_num);
	
	//사진경로 등록
	void addAttach(String filename, int q_num);
	
	//사진경로 리스트
	 List<String> getAttach(int q_num);
	 
	PageTO search(String selectoption, PageTO to);
	
}
