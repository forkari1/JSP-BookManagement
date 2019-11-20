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
 	String name = request.getParameter("name");
 	String phone = request.getParameter("phone");
 	PreparedStatement pstm = null;
	ResultSet rs = null;
	String SQL = new String();
	
	if( name.equals("")||phone.equals("") ){
		out.println("<script>alert('입력하실 내용을 확인하세요');history.back();</script>");		
		return;
	}
	
 	try{	
		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL,USER,PWord);
		
		// 장르정보 가져올 쿼리문
		SQL = "insert into member values(MEMBER_SEQ.nextval,?,?)";
		pstm = conn.prepareStatement(SQL);
		pstm.setString(1, name);
		pstm.setString(2, phone);		
		rs = pstm.executeQuery();
		
		out.println("데이터 삽입에 성공했습니다.");
		response.sendRedirect("member_select.jsp");		
	}
	catch(SQLException ex){
		out.println(ex);		
	}
	catch(Exception ex){
		out.println(ex);
	}
	%>
	
	
</body>
</html>

