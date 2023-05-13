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
	



	<form action="userinsert.jsp" method="post">

    ユーザ名：<input type="text" name= "uname"/><br/>
		パスワード：<input type="password" name= "upwd"/><br/>
		phone：<input type="text" name= "uphone"/><br/>
    <button type="submit">新規</button>
</form>
	
</body>
</html>