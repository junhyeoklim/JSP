<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("id");
    
    UserDAO dao = new UserDAO();
    if (dao.exists(uid) == false) {
        out.print("회원 정보를 찾을 수 없습니다.");
        return;
    }
    
    if (dao.delete(uid)) {
    	%>
        <script type="text/javascript">
		alert('회원탈퇴 완료!');
		location.href = 'login1.jsp';
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
