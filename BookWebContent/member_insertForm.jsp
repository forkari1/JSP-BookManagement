<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.*,java.sql.*" %>
<%@ include file="include/dbOpen.inc" %>
 <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<p><h1>회원정보 입력</h1></p>
	
	<form method = "post" action="member_insert.jsp">
		회원이름 <input type = "text" name = "name"  placeholder="이름"> </br>
		핸드폰 <input type = "text" name = "phone" placeholder="핸드폰"> </br>
		
		<input type = "submit" value="삽입" >
	</form>
</body>
</html>