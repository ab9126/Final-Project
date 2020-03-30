package com.naver.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;
import com.naver.service.MemberService;
import com.naver.service.OrderService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Inject
	private OrderService oservice;
	
   @Inject
   private MemberService mservice;

   @RequestMapping("insert")
   public void insertui() {

   }

   @RequestMapping(value = "insert", method = RequestMethod.POST)
   public String insert(MemberDTO dto) {
      mservice.insert(dto);

      return "redirect:/product/list";

   }

   @RequestMapping("/list")
   public void list(Model model, PageTO to) {
      to = mservice.list(to);

      model.addAttribute("to", to);

   }

   @RequestMapping(value = "login", method = RequestMethod.GET)
   public void login() {

   }

   @RequestMapping(value = "loginPost", method = RequestMethod.POST) // servlet-context에서 빈 생성할때 login이 두개면 겹치기때문에 //
                                                      // value값을 다르게 해줘야 한다
   public void login(MemberDTO to, Model model) {
      MemberDTO bto = mservice.login(to);
      model.addAttribute("login", bto);
   }

   @RequestMapping(value = "logout", method = RequestMethod.GET)
   public String logout(HttpSession session) {

      mservice.logout(session);

      return "redirect:/member/login";
   }

   @RequestMapping(value = "update", method = RequestMethod.GET)
   public void getupdate() {

   }

   // 회원정보 수정 post
   @RequestMapping(value = "/update", method = RequestMethod.POST)
   public String postModify(HttpSession session, MemberDTO dto) {

      mservice.update(dto);

      return "redirect:/product/list";
   }

   @RequestMapping(value = "delete", method = RequestMethod.POST)
   public String delete(MemberDTO dto, HttpSession session) {
      session.invalidate();
      mservice.delete(dto);

      return "redirect:/member/login";
   }

   @RequestMapping(value = "/delete", method = RequestMethod.GET)
   public void delete() {

   }

   @RequestMapping(value = "read", method = RequestMethod.GET)
   public String read(String m_id, Model model, PageTO to ,HttpSession session) {
      String dto = session.getId();
      model.addAttribute("dto", mservice.read(m_id));
      to = oservice.list(to, m_id);
      model.addAttribute("to", to);
      return "/member/read";
   }

   @RequestMapping("pwfind")
   public String userFindPwPage() {
      return "/member/pwfind";
   }

   @RequestMapping(value = "pwfind", method = RequestMethod.POST)
   @ResponseBody
	public String pwfind(MemberDTO dto, Model model , String m_id , String m_email ) {
	  Map<String, Object> map = new HashMap<String, Object>();
	  map.put("m_id", m_id);
	  map.put("m_email", m_email);
	  dto = mservice.pwfind(map);
      String result = "your password is + " + dto.getM_password() + ".";
      return result;
   }

   
   @RequestMapping(value = "/search", method = RequestMethod.POST)
   public String search(Model model, PageTO to, String selectoption , String search) {
	   Map<String, Object> map = new HashMap<String, Object>();
	   map.put("selectoption", selectoption);
	   map.put("search", search);
		try {
			to.setSearch(search);
			search = new String(to.getSearch().getBytes("8859_1"), "UTF-8");
			map.put("search", search);
		} catch (UnsupportedEncodingException e) {
			
		}
		to = mservice.search(to, map);
		model.addAttribute("to", to);
	   return "/member/list";
   }
   
   
   
}