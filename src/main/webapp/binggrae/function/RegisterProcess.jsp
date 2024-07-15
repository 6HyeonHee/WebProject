<%@page import="utils.JSFunction2"%>
<%@page import="membership.MemberDAO2"%>
<%@page import="membership.MemberDTO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 클라이언트가 작성한 폼값을 받아온다.
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String passrepeat = request.getParameter("passrepeat");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");

// 폼값을 DTO에 저장
MemberDTO2 dto = new MemberDTO2();
dto.setId(id);
dto.setPass(pass);
dto.setPassrepeat(passrepeat);
dto.setName(name);
dto.setEmail(email);
dto.setPhone(phone);

//DAO 인스턴스 생성
MemberDAO2 dao = new MemberDAO2(application);
//메서드 호출해서 insert 쿼리문 실행
int iResult = dao.insertMember(dto);
//연결해제
dao.close();

if (iResult == 1) {
	// 회원가입에 성공하면 로그인 페이지로
	response.sendRedirect("../login.jsp");
} else {
	// 실패했다면 경고창을 띄우고 뒤로 이동한다.
	JSFunction2.alertBack("회원가입에 실패하였습니다.", out);
}
%>