package com.naver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naver.dto.PageTO;
import com.naver.dto.ReviewDTO;
import com.naver.repository.ReviewDAO;

@Service
@Transactional
public class ReviewServiceImpl implements ReviewService{

	@Inject
	private ReviewDAO rdao;
	
	@Override
	public void insert(ReviewDTO dto) {
		String[] arr = dto.getFilenames();
		if(dto.getR_thumb() == null && arr != null)
			dto.setR_thumb(arr[0]);
		rdao.insert(dto);
		if(arr != null) 
			for(String filename : arr)
				rdao.addAttach(filename, dto.getR_num());
		
	}
	
	@Override
	public PageTO list(Integer p_num, PageTO to) {
		int amount = rdao.getAmount();
		to.setAmount(amount);
		List<ReviewDTO> list = rdao.list(p_num, to);
		for(ReviewDTO dto : list) {
			List<String> filelist = rdao.getAttach(dto.getR_num());
			String[] filenames = filelist.toArray(new String[filelist.size()]);
			dto.setFilenames(filenames);
		}
		to.setRlist(list);
		return to;
	}
	
	@Override
	public void delete(int r_num) {
		rdao.delete(r_num);
	}
}
