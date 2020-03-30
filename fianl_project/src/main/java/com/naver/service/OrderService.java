package com.naver.service;

import com.naver.dto.OrderDTO;
import com.naver.dto.OrderSubDTO;
import com.naver.dto.PageTO;

public interface OrderService {

   void insert(OrderSubDTO dto);

   void update(OrderDTO dto);

   PageTO list(PageTO to, String m_id);

}