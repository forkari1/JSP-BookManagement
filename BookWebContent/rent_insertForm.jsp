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
	<p><h1>대여정보 입력</h1></p>
	
	<form method = "post" action="rent_insert.jsp">
		<label>회원정보</label>
		<select name="mem_no">
			<option>회원번호를 선택하세요.</option>
<% 
	try{		
		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL,USER,PWord);
		PreparedStatement pstm;
		
		ResultSet rs;
		String SQL;
		// 장르정보 가져올 쿼리문
		SQL = "select * from member";
		pstm = conn.prepareStatement(SQL);
		rs = pstm.executeQuery();
		
		while(rs.next())
		{
			String num = rs.getString(1);
			String name = rs.getString(2);
			String view = num+" "+name;
		%>
			<p><option value = "<%=num%>"><%=view%></option></p>
		<%
		}
		%>
			</select>			
			
			<label>도서정보</label>
			<select name="book_no">
				<option>도서번호를 선택하세요.</option>			
		<%
		pstm.close();
		rs.close();
		
		SQL = "select * from book";
		pstm = conn.prepareStatement(SQL);
		rs = pstm.executeQuery();
		
		while(rs.next())
		{
			String num = rs.getString(1);
			String name = rs.getString(2);
			String view = num+" "+name;
			%>
				<p><option value = "<%=num%>"><%=view%></option></p>
		<%
		}
		%>
			</select>
		<%
	}
	catch( SQLException e){
		out.println(e);
	}
		%>

		<input type = "submit" value="삽입" >
	</form>
</body>
</html>