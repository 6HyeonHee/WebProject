<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="user_id" value="${param.user_id}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 파비콘 -->
<link rel="icon" href="images/common/favicon.ico">
<link rel="apple-touch-icon-precomposed" href="images/common/favicon.ico">

<script type="text/javascript">
	function sendCheckValue() {
		var openJoinfrm = opener.document.joinForm;
		
		if (document.checkIdForm.chResult.value=="N") {
			alert("다른 아이디를 입력해주세요.");
			openJoinfrm.id.focus();
			
			window.close();
		}else {
			// 중복체크 결과인 idCheck 값을 전달
			openJoinfrm.idDuplication.value="idCheck";
			openJoinfrm.dbCheckId.disabled=true;
			openJoinfrm.dbCheckId.style.opacity=0.6;
			openJoinfrm.dbCheckId.style.cursor="default";
			window.close();
		}
		
	}
</script>

</head>
<body>
	<b><font size="4" color="gray">ID 중복 확인</font></b>
	<br>
	
	<form name="checkIdForm">
		<input type="text" name="id" value="${user_id}" id="userId" disabled>
			
		<c:choose>
		<c:when test="${result==1}">
			<p style="color: red">이미 사용 중인 아이디입니다.</p>
			<input type="hidden" name="chResult" value="N"/>
		</c:when>
		<c:when test="${result==0 }">
			<p style="color: red">사용가능한 아이디입니다.</p>
			<input type="hidden" name="chResult" value="Y"/>
		</c:when>
		<c:otherwise>
			<p>오류 발생(-1)</p>
			<input type="hidden" name="chResult" value="N"/>
		</c:otherwise>
		</c:choose>

		<input type="button" onclick="window.close()" value="취소"/><br>
		<input type="button" onclick="sendCheckValue()" value="사용하기"/>

	</form>
출처: https://kang-james.tistory.com/entry/JSP-아이디-중복-체크-기능-구현-동기-방식 [내 꿈을 JAVA:티스토리]
</body>
</html>