<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.Date"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./css/style.css">
</head>

<body>
<%@ include file = "menu2.jsp" %>
<br>
<div class="middle" align=center >
	<h1>웹 쇼핑몰에 오신 것을 환영합니다.</h1>
	
</div>
<div align=center>
	<br>
			Welcome to Web Market!
		</div>
<div align=center>
	<b>
 	<%
		String res1 = "<br>현재 시간 : " +(new Date()).toString()+ "<br>";
		out.print(res1);
	%>
	</b>
	<br>			
</div>
<%@ include file = "footer.jsp" %>

</body>
</html>


