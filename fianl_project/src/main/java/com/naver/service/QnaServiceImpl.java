package com.naver.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.naver.dto.PageTO;
import com.naver.dto.QnaDTO;
import com.naver.repository.QnaDAO;
import com.naver.repository.ReplyDAO;

@Service
public class QnaServiceImpl implements QnaService{
	@Inject
	private QnaDAO qdao;
	
	@Inject
	private ReplyDAO rdao;
	
	@Override
	public PageTO list(PageTO to) {
		int amount = qdao.getAmount();
		to.setAmount(amount);
		
		List<QnaDTO> list = qdao.list(to);
		to.setQlist(list);
		return to;
	}
	
	@Override
	public void insert(QnaDTO dto) {
		int q_num = qdao.getQnum();
		System.out.println("서비스에서 q_num="+ q_num);
		dto.setQ_num(q_num);
		dto.setQ_reproot(q_num);
		String[] arr = dto.getQ_filenames();
		if (arr != null) {
			dto.setQ_thumb(arr[0]);
		}
		
		System.out.println("서비스에서 dto="+ dto);
		qdao.insert(dto);
		
		if (arr != null) {
			for (String filename : arr) {
				System.out.println("서비스에서 arr="+ arr);
				System.out.println("서비스에서 filename="+ filename);
				qdao.addAttach(filename, dto.getQ_num());
			}
		}
	}
	
	@Override
	public QnaDTO read(int q_num) {
		QnaDTO qdto = qdao.read(q_num);
		List<String> qlist = qdao.getAttach(q_num);
		String[] filenames = qlist.toArray(new String[qlist.size()]);
		qdto.setQ_filenames(filenames);
		return qdto;
	}
	
	@Override
	@Transactional
	public void reply(QnaDTO dto) {
		QnaDTO oridto = qdao.oridto(dto.getQ_num());
		qdao.icreaseRepStep(oridto);
		
		int q_num = qdao.getQnum();
		dto.setQ_num(q_num);
		dto.setQ_reproot(oridto.getQ_reproot());
		dto.setQ_repstep(oridto.getQ_repstep()+1);
		dto.setQ_indent(oridto.getQ_indent()+1);
		
		qdao.reply(dto);
	}

	@Override
	public void deleteFile(int q_num, String filename) {
		qdao.deleteFile(q_num, filename);
	}

	@Override
	public void delete(int q_num) {
		// q_num 의 모든 댓글 삭제
		rdao.deleteAllreply(q_num);
		
		// q_num 의 모든 사진 삭제
		qdao.deleteFileAll(q_num);
		
		// q_num 의 게시글 삭제
		qdao.delete(q_num);		
	}

	@Override
	public void update(QnaDTO qdto) {
		qdao.update(qdto);
		
	}

	@Override
	public PageTO search(String selectoption, PageTO to) {
		
		return qdao.search(selectoption,to);
	}
	

}
