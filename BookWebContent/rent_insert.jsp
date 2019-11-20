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
 	String memberId = request.getParameter("mem_no");
 	String bookId = request.getParameter("book_no");
 	PreparedStatement pstm = null;
	ResultSet rs = null;
	String SQL = new String();
	
	if( memberId.equals("")||bookId.equals("") ){
		out.println("<script>alert('입력하실 내용을 확인하세요');history.back();</script>");		
		return;
	}
	
 	try{	
		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL,USER,PWord);
		
		// 장르정보 가져올 쿼리문
		SQL = "insert into rent values(RENTAL_NUM.nextval,sysdate,sysdate+7,?,?)";
		pstm = conn.prepareStatement(SQL);
		pstm.setString(1, memberId);
		pstm.setString(2, bookId);		
		rs = pstm.executeQuery();
		
		out.println("데이터 삽입에 성공했습니다.");
		%><a href="index.jsp">[홈으로]</a><%
		
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

