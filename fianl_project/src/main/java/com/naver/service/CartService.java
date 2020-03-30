package com.naver.service;


import com.naver.dto.CartDTO;
import com.naver.dto.CartsubDTO;
import com.naver.dto.PageTO;

public interface CartService {

   public abstract void delete(int c_num);

   public abstract void insert(CartsubDTO cdto);

   public abstract PageTO list(PageTO to, String m_id);

   public abstract void update(CartDTO dto);
   
}