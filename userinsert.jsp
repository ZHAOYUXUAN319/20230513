<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javaJdbc.JdbcConn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>新規登録できました。</p>
	<p>
		<a href=login.jsp>ログインページへ</a>
	</p>
	<%
	JdbcConn jc = new JdbcConn();

	try {
		jc.getDbcom();

		String username = request.getParameter("uname");
		String password = request.getParameter("upwd");
		String phone = request.getParameter("uphone");

		String sql = "insert into Users(id, password, phone) values('" + username + "','" + password + "','" + phone + "')";
		jc.cud(sql);

	} catch (ClassNotFoundException ex) {
		ex.printStackTrace();
	} 
	%>

</body>
</html>
