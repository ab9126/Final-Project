package com.naver.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naver.dto.CartsubDTO;
import com.naver.dto.OrderDTO;
import com.naver.dto.OrderSubDTO;
import com.naver.dto.PageTO;
import com.naver.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {

	@Inject
	private OrderService oservice;

	@RequestMapping(value = "insertui", method = RequestMethod.POST)
	public String insert(CartsubDTO cdto, Model model) {
		List<CartsubDTO> list = new ArrayList<CartsubDTO>();
		for (int i = 0; i < cdto.getCnts().length; i++) {
	         int cart_cnt = cdto.getCnts()[i];
	         cdto.setCart_cnt(cart_cnt);
	         String cart_size = cdto.getSizes()[i];
	         cdto.setCart_size(cart_size);
	         String cart_color = cdto.getColors()[i];
	         cdto.setCart_color(cart_color);
	         cdto.setCart_num(i);
	         list.add(cdto);
	         System.out.println("list"+list.get(i));
		 }
		model.addAttribute("clist", list);
		return "/order/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(OrderSubDTO dto) {
		oservice.insert(dto);
		return "redirect:/member/read?m_id="+dto.getO_fk_m_id();
	}
	
	@RequestMapping(value = "list")
	public String list(PageTO to, String m_id, Model model) {
		to = oservice.list(to, m_id);
		model.addAttribute("to", to);
		return "member/read?m_id="+m_id;
	}

}
