<%@page import="membership.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="jakarta.servlet.ServletContext" %>
<%
    String id = request.getParameter("id");
    ServletContext appcontext = getServletContext();
    MemberDAO2 dao = new MemberDAO2(application);
    int result = dao.CheckId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if (result == -1) { %>
    <script>
    alert('아이디를 작성해주세요');
    history.back();
    </script>
    <% } else if (result == 1) { %>
    <script>
    alert('중복입니다.');
    history.back();
    </script>
    <% } else { %>
    <script>
    alert('사용가능한 아이디 입니다.');
    history.back();
    </script>
    <% } %>
</body>
</html>