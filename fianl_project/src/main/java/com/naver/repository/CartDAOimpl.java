package com.naver.repository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.naver.dto.CartDTO;
import com.naver.dto.CartsubDTO;
import com.naver.dto.PageTO;
import com.naver.dto.ProductDTO;

@Repository
public class CartDAOimpl implements CartDAO{

   @Inject
   private SqlSession session;
   private final String NS = "com.naver.cart";
   
   @Override
   public List<CartsubDTO> list(PageTO to, String m_id) {
//      RowBounds rb = new RowBounds(to.getStartNum()-1, to.getPerPage());
      return session.selectList(NS+".list", m_id);
   }

   @Override
   public void insert(CartsubDTO cdto) {
      session.insert(NS+".insert", cdto);
   }

   @Override
   public int getAmount() {
      return session.selectOne(NS+".getAmount");
   }

   @Override
   public void delete(int c_num) {
      System.out.println("c_num = " + c_num);
      session.delete(NS+".delete", c_num);
      
   }
   
   @Override
   public void update(CartDTO dto) {
      session.update(NS+".update", dto);
   }
}