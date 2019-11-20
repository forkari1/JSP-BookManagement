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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	
	</script>
</head>
<body>
	<p><h1>회원정보 수정</h1></p>		
			
<%	 
	 String mem_id = request.getParameter("mem_no");
	 if( mem_id == null ) { 		 
%>	
	<form name ="login" class = "modify_form" method="post" action="member_modifyForm.jsp"> 
      	<select name="mem_no" >
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
			<input type = "submit" value="검색">
		</form>			
<%
		}catch( SQLException e){
			out.println(e);
		}catch( Exception e ){
			out.println(e);
		}
		
	 }else{
 %>	
	<form name ="login" class = "modify_form" method="post" action = "member_modify.jsp"> 
      	
<% 	
		try{		
			Class.forName(DRIVER).newInstance();
			conn = DriverManager.getConnection(URL,USER,PWord);
			PreparedStatement pstm;
			
			ResultSet rs;
			String SQL;
			// 장르정보 가져올 쿼리문
			SQL = "select * from member where mem_num = "+mem_id;
			pstm = conn.prepareStatement(SQL);
			rs = pstm.executeQuery();
			
			if( !rs.next() ) return;
			
			String num = rs.getString(1);
			String name = rs.getString(2);
			String phone = rs.getString(3);
%>
			회원ID<input type = "text" name = "num" value = "<%=num%>" readonly > </br>
			회원이름<input type = "text" name = "name" value = "<%=name%>"  > </br>
			전화번호<input type = "text" name = "phone" value = "<%=phone%>"  > </br>
			<input type = "submit" value="수정" >&nbsp;<input type="button" value = "취소" onclick="history.back();">
		</form>
<%
		}catch( SQLException e){
			out.println(e);
		}catch( Exception e ){
			out.println(e);
		}
	}
%>
		
</body>
</html>