<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- postの内容はページで見えない。Get内容見える -->
	<form action = "check.jsp" method="post">

		ユーザ名：<input type="text" name= "uname"/><br/>
		パスワード：<input type="password" name= "upwd"/><br/>
		<input type = "submit" value = "login"><br/>	
	</form>
	<button onclick="window.location.href='NewLogin.jsp'">新規</button>	
	<!--<p><a href='NewLogin.jsp'>新規</a></p>  -->
	
</body>
</html>