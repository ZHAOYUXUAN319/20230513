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


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String inputValue = request.getParameter("inputValue");
System.out.println("Input Value: " + inputValue);
BukenService list1 = new BukenService();
List<BukenBean> listinfo1 = list1.bukenkensaku(inputValue);
%>
<form method="GET">
    <input type="submit" value="搜索">
    <input type="text" name="inputValue">
</form>
<table>
    <thead>
        <tr>
            <th>Property ID</th>
            <th>Property Name</th>
            <th>Address</th>
            <th>Property Type</th>
            <th>Property Area</th>
            <th>Price</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <% for (BukenBean c : listinfo1) { %>
        <tr>
            <td><%= c.getPropertyId() %></td>
            <td><%= c.getPropertyName() %></td>
            <td><%= c.getAddress() %></td>
            <td><%= c.getPropertyType() %></td>
            <td><%= c.getPropertyArea() %></td>
            <td><%= c.getPrice() %></td>
            <td><%= c.getStatus() %></td>
        </tr>
        <% } %>
    </tbody>
</table>


</body>
</html>