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
		//全部ログアウト
		session.invalidate();
		response.sendRedirect("login.jsp");
		//只今のログアウト
		//session.removeAttribute("uname");
	
	
	%>
</body>
</html>