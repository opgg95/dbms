package com.koreait.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Do3 {
	public String execute(HttpServletRequest req,HttpServletResponse resq) {
		
		req.setAttribute("result", "do3으로 보내기!");
		return "do3.jsp";
		
		
	}
}
