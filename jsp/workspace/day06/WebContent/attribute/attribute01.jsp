<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// request.getparameter()...
		// : 요청을 보낸 페이지에서 <input>으로
		// 보낸 데이터를 받을때 사용
		String userid = "kjh";
		String userpw = "1q2w3e4r";
		String username = "곽지현";
	
		// request
//		request.setAttribute("userid",userid);
//		request.setAttribute("userpw",userpw);
//		request.setAttribute("username",username);
//		pageContext.forward("attribute02.jsp");

		//session
		session.setAttribute("userid",userid);
		session.setAttribute("userpw",userpw);
		session.setAttribute("username",username);
//		pageContext.forward("attribute02.jsp");
		response.sendRedirect("attribute02.jsp");
		//session 객체는 브라우저를 
		//
	%>

</body>
</html>