package com.naver.repository;

import java.util.List;

import com.naver.dto.CartDTO;
import com.naver.dto.CartsubDTO;
import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;

public interface CartDAO {

   
   public abstract void insert(CartsubDTO cdto);

   public abstract int getAmount();

   public abstract void delete(int c_num);

   public abstract List<CartsubDTO> list(PageTO to, String m_id);

   public abstract void update(CartDTO dto);

}