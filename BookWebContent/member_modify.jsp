<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java"
	import="java.sql.*,java.io.*,java.net.*,java.util.*,java.text.*"%>
<%@ include file="include/dbOpen.inc" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	String mem_no = request.getParameter("num"); // 현재 로그인한 member id
	String mem_name = request.getParameter("name");
	String mem_phone = request.getParameter("phone");
	String query = new String();

	try {
		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL,USER,PWord);

		query = "update member set mem_name=?, mem_phone=? where mem_num=?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, mem_name);
		pstmt.setString(2, mem_phone);
		pstmt.setString(3, mem_no);		
		
		pstmt.executeUpdate();		
		
		response.sendRedirect("member_select.jsp");
		
	} catch (SQLException e) {
		out.println(e);
	} catch (ClassNotFoundException e) {
		out.println(e);
	}catch(Exception e){
		out.println(e);
	}
%>