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
	String bookId   = request.getParameter("book_id");
 	String bookName = request.getParameter("book_name");
 	String bookPublisher   = request.getParameter("book_publisher");
 	String bookAuthor = request.getParameter("book_author");
 	String bookRegedate   = request.getParameter("book_regidate");
 	String cateId = request.getParameter("cate_id");
 	
 	PreparedStatement pstm = null;
	ResultSet rs = null;
	String SQL = new String();
	
	if( bookId.equals("") || bookName.equals("") ){
		out.println("<script>alert('입력하실 내용을 확인하세요');history.back();</script>");		
		return;
	}
	
 	try{	
		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL,USER,PWord);
		
		// 장르정보 가져올 쿼리문
		SQL = "insert into book values(?,?,?,?,?,?)";
		pstm.setInt(1, Integer.parseInt(bookId));
		pstm.setString(2, bookName);
		pstm.setString(3, bookPublisher);
		pstm.setString(4, bookAuthor);
		pstm.setString(5, bookRegedate);
		pstm.setInt(6, Integer.parseInt( cateId ));
		pstm = conn.prepareStatement(SQL);
		rs = pstm.executeQuery();
		
		out.println("데이터 삽입에 성공했습니다.");
		%><a href="index.jsp">[홈으로]</a><%
		
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

