<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*" %>
<%@ page import = "java.util.*,java.sql.*" %>
<%@ include file="include/dbOpen.inc" %>
 <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		%>
		</br>
		</br>
		<table class="SelectTable"  border = "1">
		<tr>
		<td>회원번호</td> <td>회원이름</td><td>핸드폰</td>
		</tr>
		
		<% 
		while(rs.next())
		{
			%>
			<tr>
			<td>
			<%
			out.print( rs.getString(1) );
			%>
			</td>
			<td>
			<% 
			out.print( rs.getString(2) );
			%>
			</td>
			<td>
			<%
			out.print( rs.getString(3) );
			%>
			</td>
			</tr>
			<%
		}
		%>
		
		</table>
		
		<% 
	}
	catch(SQLException ex){
		ex.printStackTrace();
		
	}
	catch(Exception ex){
		ex.printStackTrace();
	}
	%>
</body>
</html>

