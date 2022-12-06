<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();	

if(dao.exists(id) == true)
{
	out.print("이미 사용중인 ID입니다.");	
	return;
}
	else if (dao.exists(id) == false)
	{
		out.print("사용 가능한 ID입니다.");	
		
	}
	 %>
	 <a href="#" onclick="self.close()">닫기</a>