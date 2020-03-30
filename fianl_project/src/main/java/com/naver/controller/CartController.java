package com.naver.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naver.dto.CartDTO;
import com.naver.dto.CartsubDTO;
import com.naver.dto.PageTO;
import com.naver.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {
   
   @Inject
   private CartService cservice;
   
   @RequestMapping(value = "/list/{m_id}" , method = RequestMethod.GET)
   public String list(@PathVariable String m_id, Model model,PageTO to ) {
      to = cservice.list(to, m_id);
      model.addAttribute("to", to);
      return "/cart/list";
   }
   
   @RequestMapping(value = "{m_id}", method = RequestMethod.GET)
   @ResponseBody
   public List<CartsubDTO> list(@PathVariable String m_id, Model model) {
      PageTO to = cservice.list(new PageTO(), m_id);
       List<CartsubDTO> clist = to.getClist();
      return clist;
   }
   
   @RequestMapping(value = "/insert" , method = RequestMethod.POST)
   public String insert(Model model, PageTO to , CartsubDTO cdto) {
      System.out.println(cdto);
      cservice.insert(cdto);
      return "redirect:/cart/list/"+cdto.getM_id();
   }
   
   @RequestMapping(value = "{cart_num}" , method = RequestMethod.DELETE)
   @ResponseBody
   public String delete(@PathVariable int cart_num) {
      cservice.delete(cart_num);
      return "delete success";
   }
   
   @RequestMapping(method = RequestMethod.PUT)
   @ResponseBody
   public String update(@RequestBody CartDTO dto) {
      cservice.update(dto);
      return "update success";
   }

}