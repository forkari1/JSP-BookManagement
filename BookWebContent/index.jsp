<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 
 <% 
 	String contentPage = request.getParameter("contentPage");
 	if( contentPage == null ) contentPage = "right-frame.html";
 	out.println(contentPage);
 %>

<!DOCTYPE html>
<html>
	<head>	
		<link href="default.css" rel="stylesheet" type="text/css" media="all" />	
	</head>
	
	<body>
		<header>
			<div id="menu">
				<jsp:include page="menu.jsp"></jsp:include>
			</div>
			<div id="banner">
				<jsp:include page="banner.jsp"></jsp:include>
			</div>
		</header>
		<div class ="body">
			<nav>
				<jsp:include page="left_Frame.jsp"></jsp:include>
				<br><hr class = "horizon">
			</nav>
			<section>
				<iframe clss="iframe" width = "650px" height = "500px"  src=<%=contentPage%> scrolling="no" style="border:none;" >
				</iframe>
			</section>
		</div>
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>		
	</body>
</html>