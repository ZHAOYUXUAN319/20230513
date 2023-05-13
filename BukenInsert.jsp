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

				String propertyId = request.getParameter("bkId");
				String propertyName = request.getParameter("bkName");
				String address = request.getParameter("bkAddress");
				String propertyType = request.getParameter("bkType");
				String propertyArea = request.getParameter("bkArea");
				String price = request.getParameter("bkPrice");
				String syozokuCompanyId = request.getParameter("syozokuCompanyId");
				String status = request.getParameter("bkStatus");

		String sql = "insert into property(property_id, property_name, address,property_type,property_area,price,syozoku_company_id,status) values('" + propertyId + "','" + propertyName + "','" + address + "','" + propertyType + "','" + propertyArea + "','" + price + "','" + syozokuCompanyId + "','" + status + "')";
		jc.cud(sql);

	} catch (ClassNotFoundException ex) {
		ex.printStackTrace();
	} 
	%>

</body>
</html>
