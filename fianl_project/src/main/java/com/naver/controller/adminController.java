package com.naver.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;
import com.naver.service.MemberService;

@Controller
@RequestMapping("admin")
public class adminController {

   @Inject
   private MemberService mservice;

   @RequestMapping(value = "index", method = RequestMethod.GET)
   public void index() {

   }

   @RequestMapping("list")
   public String list(Model model, PageTO to , String id) {
	   System.out.println("id=?" + id);
	   MemberDTO dto = mservice.read(id);
	   model.addAttribute("login", dto);
	   return "admin/allorderlist";
   }
   
   @RequestMapping("allorderlist")
   public String allorderlist(Model model, PageTO to) {
      
      return "admin/allorderlist";
   }
   
}