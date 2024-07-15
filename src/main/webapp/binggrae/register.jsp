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

<script type="text/javascript">
function validateForm(form) {  // 폼 내용 검증
    if (form.name.value == "") {
        alert("이름을 입력하세요.");
        form.name.focus();
        return false;
    }
    if (form.email.value == "") {
        alert("이메일을 입력하세요.");
        form.email.focus();
        return false;
    }
    if (form.phone.value == "") {
        alert("전화번호를 입력하세요");
        form.phone.focus();
        return false;
    }
    if (form.id.value == "") {
        alert("아이디를 입력하세요");
        form.id.focus();
        return false;
    }
    if (form.pass.value == "") {
        alert("패스워드를 입력하세요");
        form.pass.focus();
        return false;
    }
}
</script>
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회 원 가 입</h1>
                            </div>
                            <form class="user" action="./function/RegisterProcess.jsp"
                            	onsubmit="return validateForm(this);">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control form-control-user" 
                                        id="exampleInputName" placeholder="이름을 입력하세요">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control form-control-user" 
                                        id="exampleInputEmail" placeholder="이메일 주소를 입력하세요">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" class="form-control form-control-user" 
                                        id="exampleInputPhoneNum" placeholder="전화번호를 입력하세요 ('-' 제외)">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="id" class="form-control form-control-user" 
                                        id="exampleInputId" placeholder="6-12자리의 아이디를 입력하세요">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" name="pass" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="비밀번호">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" name="passrepeat" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="비밀번호 확인">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block" 
                                	onclick="location.href='../login.jsp';">
                                	회원가입
                                </button>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.jsp">비밀번호를 잊어버리셨나요?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.jsp">이미 계정이 있다면 로그인하세요!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>