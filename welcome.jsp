<%@page import="org.omg.PortableInterceptor.SUCCESSFUL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javaJdbc.BukenBean" %>
<%@ page import="javaJdbc.BukenService" %>
<%@ page import="javaJdbc.JdbcConn" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#bk {
	text-align: center;
	display: flex;
}

#bk p {
	border: solid 2px;
	padding: 10px;
	margin: 10px;
}

#bkHome {
	width: 600px;
	height: 400px;
}

#bkIframe {
	display: flex;
	flex-direction: column;
}

#bkkensaku {
	width: 600px;
	margin-bottom: 20px;
}

#ks {
	margin: 20px;
}
</style>

</head>
<body>
	welcome:
	<%
String name = (String) session.getAttribute("uname");

if (name != null) {
	out.print(name);
%>
	<a href="invalidate.jsp">ログアウト</a>
<%
} else {
	response.sendRedirect("login.jsp");
}
%>
	<div id="bk">
		<p>
			<a href='buken.jsp'>管理者物件一覧</a>
		</p>
		<p>
			<a href='BukenShiki.jsp'>物件新規</a>
		</p>
		<p>
			<a href='buken.jsp'>物件削除</a>
		</p>
		<p>
			<a href='buken.jsp'>物件編集</a>
		</p>
		<p>
			<a href='buken.jsp'>中身部屋</a>
		</p>
	</div>
	<div id="bkIframe">
		<iframe src="bukenkensaku.jsp" id="bkkensaku" name="iframe" ></iframe>
		<iframe src="buken.jsp" id="bkHome" name="iframe" ></iframe>
	</div>
</body>
</html>
