<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" action="cate_insert.jsp">
		장르명 <input type = "text" name = "cate_name" size = "10"></br></br>
		<input type = "submit" value="삽입" >
	</form>
</body>
</html>