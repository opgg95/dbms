package com.koreait.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Do1 {
	public String execute(HttpServletRequest req,HttpServletResponse resq) {
		
		req.setAttribute("result", "do1으로 보내기!");
		return "do1.jsp";
		
		
	}
}
