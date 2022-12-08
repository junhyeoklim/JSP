<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="dao.UserBean">
	<jsp:setProperty name="user" property="*" />
</jsp:useBean>
<%
	
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();	
	boolean check;
	
	if(dao.exists(id))
	{
		
		%>
		<script>
		alert("이미 사용중인 아이디 입니다.");		
		window.close();
		</script>
		<% 
		
	
	}
	else
	{
		
		%>
			사용 가능한 아이디<br><a href="#" onclick="self.close()">닫기</a>
			 
		<%
	}
	%>
	