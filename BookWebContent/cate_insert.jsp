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
	 	String cateName = request.getParameter("cate_name");
	 	PreparedStatement pstm = null;
		ResultSet rs = null;
		String SQL = new String();
		
		if( cateName.equals("") ){
			out.println("<script>alert('장르명을 확인하세요');history.back();</script>");
			
			return;
		}
		
	 	try{	
			Class.forName(DRIVER).newInstance();
			conn = DriverManager.getConnection(URL,USER,PWord);
			
			// 장르정보 가져올 쿼리문
			SQL = "insert into cate values(CATE_SEQ.nextval,?)";
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, cateName);			
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

