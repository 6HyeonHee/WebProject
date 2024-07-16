<%@page import="membership.MemberDTO2"%>
<%@page import="membership.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");
out.println(userId+"="+userPwd);

String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

MemberDAO2 dao = new MemberDAO2(oracleDriver, oracleURL, oracleId, oraclePwd);
MemberDTO2 memberDTO2 = dao.getMemberDTO(userId, userPwd);
dao.close();


if (memberDTO2.getId() != null) {
	session.setAttribute("UserId", memberDTO2.getId());
	session.setAttribute("UserName", memberDTO2.getName());
	response.sendRedirect("index.jsp");
} else {
	request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
	request.getRequestDispatcher("login.jsp").forward(request, response);
}
%>