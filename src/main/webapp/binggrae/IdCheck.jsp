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
    
    response.setContentType("application/json");
    String jsonResponse;

    if (result == -1) {
        jsonResponse = "{\"status\": \"error\", \"message\": \"아이디를 작성해주세요\"}";
    } else if (result == 1) {
        jsonResponse = "{\"status\": \"error\", \"message\": \"이미 존재하는 아이디 입니다.\"}";
    } else {
        jsonResponse = "{\"status\": \"success\", \"message\": \"사용가능한 아이디 입니다.\"}";
    }

    out.print(jsonResponse);
%>