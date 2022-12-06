<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>

<%-- 회원정보 수정 기능 구현 --%>
<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("id");
    
    UserDAO dao = new UserDAO();
    if (dao.exists(uid) == false) {
        out.print("회원 정보를 찾을 수 없습니다.");
        return;
    }
    
    if (dao.update(user) == true) {%>
    <script type="text/javascript">
		alert('회원정보 수정 완료');
		location.href = 'welcome2.jsp';
	</script>
    <%    
    }
    
%>
