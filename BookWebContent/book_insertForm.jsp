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
	<form method = "post" action="book_insert.jsp">
		책번호<input type = "number" name = "book_id" size = "10"> </br></br> 
		책이름 <input type = "text" name = "book_name" size = "10"></br></br>
		출판사<input type = "text" name = "book_publisher" size = "10"> </br></br> 
		저자 <input type = "text" name = "book_author" size = "10"></br></br>
		등록일<input type = "date" name = "book_regedate" size = "10"> </br></br> 
		장르번호<input type = "number" name = "cate_id" size = "10"></br></br>
		<input type = "submit" value="삽입" >
	</form>
</body>
</html>