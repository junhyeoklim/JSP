<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>
	
<%

    String uid = request.getParameter("id");    
    String upass = request.getParameter("ps");
    
    UserDAO dao = new UserDAO();
	int code = dao.login(uid, upass);	

    
    if (code == 0) {
    	dao.delete(uid);
    	%>
        <script type="text/javascript">
		alert('회원탈퇴 완료!');
		location.href = 'welcome.jsp';
	</script>
        <%
    } 
    else if (code == 2) {    
    	%>
        <script type="text/javascript">
		alert('비밀번호가 일치하지 않습니다!');
		location.href = 'withdrawForm.jsp';
	</script>
        <%
    } 
    else {
    	%>
        <script type="text/javascript">
		alert('회원탈퇴중 오류가 발생하였습니다.!');
		location.href = 'withdrawForm.jsp';
		</script>
		<%
    }
    %>
