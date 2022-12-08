<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>

<%-- 회원정보 수정 기능 구현 --%>
<%@ page import = "dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>

<% 
String cps = request.getParameter("cps");    
String cps2 = request.getParameter("cps2");
	UserDAO dao = new UserDAO();    
    
    if (cps == cps2) {
    dao.update(user);
    %>
    <script type="text/javascript">
		alert('회원정보 수정 완료');
		location.href = 'welcome2.jsp';
	</script>
    <%    
    }
   
    else if (cps != cps2) {        
        %>
        <script type="text/javascript">
    		alert('비밀번호가 일치하지 않습니다!');
    		location.href = 'updateForm.jsp';
    	</script>
        <%    
        }
    
%>
