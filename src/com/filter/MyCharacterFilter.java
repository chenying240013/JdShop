package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MyCharacterFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
	
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain filterChain) throws IOException, ServletException {
		
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		filterChain.doFilter(request, response);
	
		
		
	}
	
	@Override
	public void destroy() {
		
	}

	

}
