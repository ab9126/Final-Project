package com.naver.repository;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.naver.dto.OrderDTO;
import com.naver.dto.OrderSubDTO;
import com.naver.dto.PageTO;

@Repository
public class OrderDAOimpl implements OrderDAO {

   @Autowired
   private SqlSession session;
   private final String NS = "com.naver.order";

   @Override
   public void insert(OrderSubDTO dto) {
      session.insert(NS+".insert", dto);
   }
   
   @Override
   public void update(OrderDTO dto) {
      session.update(NS+".update", dto);
   }
   
   @Override
	public List<OrderSubDTO> list(PageTO to, String m_id) {
	   RowBounds rb = new RowBounds(to.getStartNum() - 1, to.getPerPage());
	   return session.selectList(NS+".list", m_id, rb);
	   	
	}

}