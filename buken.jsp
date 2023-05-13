<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javaJdbc.BukenBean"%>
<%@ page import="javaJdbc.BukenService"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</style>
</head>
<body>
	<div id="bk">
		<p>
			<a href='buken.jsp'>管理者物件一覧</a>
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
<%
String bkdelect = request.getParameter("bkdelect");
System.out.println("bkdelect: " + bkdelect);
BukenService listdelect = new BukenService();
BukenBean bukenBean = new BukenBean();
if (bkdelect != null && !bkdelect.isEmpty()) {
    bukenBean.setPropertyId(bkdelect);
    listdelect.bukenDelete(bukenBean);
}
%>


<form method="GET">
    <input type="submit" value="削除">
    <input type="text" name="bkdelect">
</form>




	<%
	BukenService list = new BukenService();
	List<BukenBean> listinfo = list.kanrisyabukenlistInfo();

	String inputValue = request.getParameter("inputValue");

	BukenService list1 = new BukenService();
	List<BukenBean> listinfo1 = list1.bukenkensaku(inputValue);

	List<BukenBean> mergedList = new ArrayList<>();
	mergedList.addAll(listinfo); // 添加一览结果
	mergedList.addAll(listinfo1); // 添加搜索结果
	%>
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
			<%
			for (BukenBean c : mergedList) {
			%>
			<tr>
				<td contentEditable="true" onclick="getCellData(this)"><%=c.getPropertyId()%></td>
				<td contentEditable="true"><%=c.getPropertyName()%></td>
				<td contentEditable="true"><%=c.getAddress()%></td>
				<td contentEditable="true"><%=c.getPropertyType()%></td>
				<td contentEditable="true"><%=c.getPropertyArea()%></td>
				<td contentEditable="true"><%=c.getPrice()%></td>
				<td contentEditable="true"><%=c.getStatus()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>