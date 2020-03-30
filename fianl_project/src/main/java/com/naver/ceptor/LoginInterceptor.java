package com.naver.ceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.naver.dto.MemberDTO;
import com.naver.dto.PageTO;
import com.naver.service.ProductService;
import com.sun.glass.ui.Application;

public class LoginInterceptor extends HandlerInterceptorAdapter {	//Adapter : HandlerInterceptor가 인터페이스구나  생각하면됨, HandlerInterceptorAdapter: 인터페이스를 구현한 클래스

	@Inject
	    private ProductService pservice;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//이미 로그인이 되어있는데 로그인을 다시하려고 url창에 user/loginPost로 들어오면 로그인된 정보를 없애버리기 
		
		HttpSession session = request.getSession(false);
		if(session != null) {
			if(session.getAttribute("login") != null) {
				session.removeAttribute("login");
			}
		}
		return true;
	}

	@Override
	   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	         ModelAndView modelAndView) throws Exception {
		  HttpSession session = request.getSession(false);
	      Object login = modelAndView.getModel().get("login"); // UserController에서 바인딩한 모델객체 , getModel()이나
	            
		  PageTO to = pservice.hotlist(new PageTO(), true);
	      session.setAttribute("hotlist", to.getPlist());
	      
	      System.out.println(login);
	      if (login != null) { // 로그인이 정상적으로 되었다면 세션에 바인딩하고 listpage로 가기
	         MemberDTO dto = (MemberDTO) login;
	         String id = dto.getM_id();
	         
	         if (id.equals("admin")) {
	        	session.setAttribute("login", login);
	            response.sendRedirect("/admin/list?id="+id);
	         } else {
	            session.setAttribute("login", login);
	            response.sendRedirect("/product/list");
	         }
	      } else { // 로그인이 안되면 다시 로그인창으로
	    	 session.setAttribute("login", login);
	         response.sendRedirect("/member/login");
	      }
	   }
}
