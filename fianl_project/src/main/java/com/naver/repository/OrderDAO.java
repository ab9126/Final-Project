package com.naver.repository;


import java.util.List;

import com.naver.dto.OrderDTO;
import com.naver.dto.OrderSubDTO;
import com.naver.dto.PageTO;

public interface OrderDAO {

   void insert(OrderSubDTO dto);

   void update(OrderDTO dto);

   List<OrderSubDTO> list(PageTO to, String m_id);


   
   
}