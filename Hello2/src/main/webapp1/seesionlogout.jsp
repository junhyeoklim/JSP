<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
%>
  <script type="text/javascript">
		alert('세션이 만료되었습니다.');
		location.href = 'welcome.jsp';
	</script>
