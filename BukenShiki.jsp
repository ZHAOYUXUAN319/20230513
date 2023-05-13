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
	



	<form action="BukenInsert.jsp" method="post">

    
    	物件ID：<input type="text" name= "bkId"/><br/>
		物件名：<input type="text" name= "bkName"/><br/>
		住所：<input type="text" name= "bkAddress"/><br/>
		タイプ：<input type="text" name= "bkType"/><br/>
		面積：<input type="text" name= "bkArea"/><br/>
		金額：<input type="text" name= "bkPrice"/><br/>
		所属会社ID：<input type="text" name= "syozokuCompanyId"/><br/>
		物件状態：<input type="text" name= "bkStatus"/><br/>
    	<button type="submit">新規登録</button>
</form>
	
</body>
</html>