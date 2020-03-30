package com.naver.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naver.dto.OrderDTO;
import com.naver.dto.OrderSubDTO;
import com.naver.dto.PageTO;
import com.naver.repository.OrderDAO;

@Service
public class OrderServiceimpl implements OrderService {

   @Autowired
   private OrderDAO odao;

   @Override
   public void insert(OrderSubDTO dto) {
      for (int i = 0; i < dto.getCnts().length; i++) {
    	 int o_fk_p_num = dto.getP_nums()[i];
    	 dto.setO_fk_p_num(o_fk_p_num);
         int o_cnt = dto.getCnts()[i];
         dto.setO_cnt(o_cnt);
         String o_size = dto.getSizes()[i];
         dto.setO_size(o_size);
         String o_color = dto.getColors()[i];
         dto.setO_color(o_color);
         System.out.println(dto);
         odao.insert(dto);
        
      }
   }

   @Override
   public void update(OrderDTO dto) {
      odao.update(dto);
   }
   
   @Override
	public PageTO list(PageTO to, String m_id) {
	   List<OrderSubDTO> oslist = odao.list(to, m_id);
	   to.setOslist(oslist);
	   return to;
	}

}