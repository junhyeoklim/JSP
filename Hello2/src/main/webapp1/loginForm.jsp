<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<form action="./login1.jsp" method="post">
	<link rel="stylesheet" href="./css/style.css">
	<table align=center>
	<tr><td colspan=2 align=center height=40><b>로그인</b><td></tr>
	<tr>
		<td align=right>아이디&nbsp;</td> 
		<td><input type="text" name="id" placeholder="Email address" required></td>
	</tr>
	<tr>
		<td align=right>패스워드&nbsp;</td> 
		<td><input type="password" name="ps" required></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<a href="./login1.jsp"><input type="submit" class="top" value="로그인하기" ></input></a>
		</td>
	</tr>
	<tr>
		<td colspan=2 align=center><small>
			<br><br><b style="color:red;">아직 회원이 아니세요?</b><br><br> 
			<a href="./signupForm.jsp"><button type="button" class="top" >회원가입</button></a></small>
		</td>
	</tr>
	</table>
	</form>
</body>
</html>