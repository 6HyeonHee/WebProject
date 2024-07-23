<%@page import="membership.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 클라이언트가 작성한 폼값을 받아온다.
String id = request.getParameter("id");
String pass = request.getParameter("pass");

MemberDAO2 dao = new MemberDAO2(application);

int result = dao.deleteMember(id, pass);

if(result == -1) {
%>
	<script type="text/javascript">
		alert("비밀번호를 잘못 입력하였습니다.");
		history.back();
	</script>
<%
} else if (result == 0) {
%>
	<script type="text/javascript">
	alert("비밀번호를 잘못 입력하였습니다.");
	history.back();
	</script>
<%
} else {
	session.invalidate();
%>
	<script type="text/javascript">
		alert("탈퇴되었습니다.");
		location.href="../binggrae/index.jsp";
	</script>
<%
}
%>