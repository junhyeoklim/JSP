<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>

<% 
String ps = request.getParameter("ps");    
String ps2 = request.getParameter("ps2");
	UserDAO dao = new UserDAO();

if(dao.exists(user.getId()))
{
	%>
	<script type="text/javascript">
		alert('이미 가입한 회원입니다!');
		location.href = 'signupForm.jsp';
	</script>
	<%
	return;
}
if(ps == ps2)
{	
	dao.insert(user);
	
	%>
	 <script type="text/javascript">
		alert('회원가입 완료!');
		location.href = 'main.jsp';
	</script>
<%
}
else if(ps != ps2)
{		
	%>
	 <script type="text/javascript">
		alert('비밀번호가 일치하지 않습니다!');
		location.href = 'signupForm.jsp';
	</script>
<%
}
else
{
	%>
	<script type="text/javascript">
		alert('회원가입 처리중 오류가 발생하였습니다!');
		location.href = 'signupForm.jsp';
	</script>
	<%
}
	
 %>