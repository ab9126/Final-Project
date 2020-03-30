package com.naver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.naver.dto.CartDTO;
import com.naver.dto.CartsubDTO;
import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;
import com.naver.repository.CartDAO;

@Service
public class CartServiceimpl implements CartService{
   @Inject
   
   private CartDAO cdao;
   @Override
   public PageTO list(PageTO to, String m_id) {
      int amount = cdao.getAmount();
      to.setAmount(amount);
      List<CartsubDTO> cdto = cdao.list(to, m_id);
      to.setClist(cdto);
      return to;
   }
   @Override
   public void delete(int c_num) {
      cdao.delete(c_num);
   }
   @Override
   public void insert(CartsubDTO cdto) {
      for (int i = 0; i < cdto.getCnts().length; i++) {
         int cart_cnt = cdto.getCnts()[i];
         cdto.setCart_cnt(cart_cnt);
         String cart_size = cdto.getSizes()[i];
         cdto.setCart_size(cart_size);
         String cart_color = cdto.getColors()[i];
         cdto.setCart_color(cart_color);
         System.out.println("cartasdf" + cdto);
         cdao.insert(cdto);
      }
      
   }
   
   @Override
   public void update(CartDTO dto) {
      cdao.update(dto);
      
   }
}