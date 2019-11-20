<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
	<head>
		<script>
			function switchPage( index )
			{
				switch( index )
				{
				case 0:
					location.href = "index.jsp?contentPage=member_select.jsp";
					break;
				case 1:
					location.href = "index.jsp?contentPage=cate_select.jsp";
					break;
				case 2:
					location.href = "index.jsp?contentPage=book_select.jsp"
					break;
				case 3:
					location.href = "index.jsp?contentPage=rent_select.jsp"
					break;
				case 4:
					location.href = "index.jsp?contentPage=cate_insertForm.jsp"
					break;
				case 5:
					location.href = "index.jsp?contentPage=book_insertForm.jsp"
					break;
				case 6:
					location.href = "index.jsp?contentPage=rent_insertForm.jsp"
					break;
				case 7:
					location.href = "index.jsp?contentPage=member_modifyForm.jsp"
					break;
				case 8:
					location.href = "index.jsp?contentPage=member_insertForm.jsp"
					break;
				}			
			}
		</script>
	
	</head>
	
	<body>
		<!-- end #header -->
		<div id="menu">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="javascript:switchPage(0);">회원정보조회</a></li>
				<li><a href="javascript:switchPage(7);">회원정보수정</a></li>
				<li><a href="javascript:switchPage(8);">회원정보삽입</a></li>
				<li><a href="javascript:switchPage(1);">장르조회</a></li>
				<li><a href="javascript:switchPage(4);">장르정보추가</a></li>
				<li><a href="javascript:switchPage(2);">도서조회</a></li>
				<li><a href="javascript:switchPage(5);">도서정보추가</a></li>
				<li><a href="javascript:switchPage(3);">대여내역조회</a></li>				
				<li><a href="javascript:switchPage(6);">대여정보추가</a></li>				
			</ul>
		</div>	
	</body>
</html>