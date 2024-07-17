<%@page import="membership.MemberDTO2"%>
<%@page import="membership.MemberDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>heeiu_빙그레</title>
    

    <!-- 파비콘 -->
    <link rel="icon" href="images/common/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="images/common/favicon.ico">

    <!-- Custom fonts for this template-->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="js/jquery-3.7.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="js/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <link rel="stylesheet" href="css/sub.css?v=<%= System.currentTimeMillis() %>">

<script type="text/javascript">

// 전화번호 하이픈 입력
const autoHypen = (target) => {
	target.value = target.value
    .replace(/[^0-9]/g, '')
    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/g, "$1-$2-$3")
    .replace(/(\-{1,2})$/g, "");
}


</script>

</head>

<body class="bg-gradient-primary">
<%
String id = (String)session.getAttribute("UserId");

if(id==null) {
	response.sendRedirect("login.jsp");
}
// 해당 회원의 모든 정보를 가져오기
MemberDAO2 dao = new MemberDAO2(application);
MemberDTO2 dto = dao.getMemberDTO(id);

%>

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">마이페이지</h1>
                            </div>
                            <form class="user" action="SettingProcess.jsp"
                            	onsubmit="return validateForm(this);">
                                <div class="form-group">
                                    이름  <input type="text" name="name" class="form-control form-control-user" 
                                        id="exampleInputName" value="<%=dto.getName()%>">
                                </div>
                                <div class="form-group">
                                    이메일  <input type="email" name="email" class="form-control form-control-user" 
                                        id="exampleInputEmail" value="<%=dto.getEmail()%>">
                                </div>
                                <div class="form-group">
                                    전화번호  <input type="text" name="phone" class="form-control form-control-user" oninput="autoHypen(this)" 
                                        id="exampleInputPhoneNum" maxlength="13" value="<%=dto.getPhone()%>">
                                </div>
                                <div class="form-group">
                                    아이디  <input type="text" name="id" class="form-control form-control-user" 
                                        id="exampleInputId" value="<%=dto.getId()%>" readonly="readonly">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        비밀번호  <input type="password" name="pass" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="비밀번호를 입력해주세요">
                                    </div>
                                    <div class="col-sm-6">
                                        비밀번호 확인  <input type="password" name="passrepeat" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="비밀번호를 한번 더 입력해주세요">
                                    </div>
                                </div>
                                
                                <div class="setting_btn">
                                <input type="submit" class="btn btn-primary btn-user btn-block" 
                                	value="정보 수정" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>