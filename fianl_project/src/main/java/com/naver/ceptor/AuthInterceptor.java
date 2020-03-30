package com.naver.ceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println(":::::::::::::::::::::AuthPreHandle::::::::::::::::::");
		HttpSession session = request.getSession();	//원래는 getSession(false)로 해서 밑에 문장을 if(session != null)로 감싸서 해야한다
		Object login = session.getAttribute("login");
		if(login == null) {
			response.sendRedirect("/member/login");
			return false; //밑에 return이 true여서 controller로 가기때문에 그전에 login이 null이면 controller로 못가게 여기서 막아줌
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println(":::::::::::::::::::::LoginPostHandle::::::::::::::::::");
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
