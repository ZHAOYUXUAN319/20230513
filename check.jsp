<%@page import="org.omg.PortableInterceptor.SUCCESSFUL"%>
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
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		if(name.equals("admin") && pwd.equals("admin")){
			session.setAttribute("uname", name);
			session.setAttribute("upwd", pwd);
			//online時間（秒）
			//session.setMaxInactiveInterval(10);
			System.out.println("sessionId    " + session.getId());
			Cookie cookie = new Cookie("uname",name);
			response.addCookie(cookie);
			request.getRequestDispatcher("welcome2.jsp").forward(request, response);
		}else{

			response.sendRedirect("login.jsp");
		}
	
	%>
</body>
</html>