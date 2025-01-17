<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <!-- 데스크탑인 경우 뷰포트 크기를 고정시켜야함, 기본그리드 + 80 (반응형은 기본값으로!) -->
  <!-- <meta name="viewport" content="width=1004, initial-scale=1.0"> -->
  <!-- 반응형에서 사용 -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">

  <meta name="description" content="다양한 맛과 행복으로 모두 하나되는 세상">
  <meta property="og:url" content="http://heeiu.dothome.co.kr/rwdBinggrae/">
  <meta property="og:title" content="빙그레">
  <meta property="og:description" content="다양한 맛과 행복으로 모두 하나되는 세상">
  <meta property="og:image" content="http://heeiu.dothome.co.kr/rwdBinggrae/images/common/og_img_binggrae.jpg">

  <title>heeiu_빙그레</title>

  <!-- 파비콘 -->
  <link rel="icon" href="images/common/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="images/common/favicon.ico">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">

  <!-- php타임스탬프 이용하여 css캐싱방지 -->
  <link rel="stylesheet" href="css/jquery-ui.min.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/swiper-bundle.min.css">
  <link rel="stylesheet" href="css/common.css?v=<%= System.currentTimeMillis() %>">
  <link rel="stylesheet" href="css/main.css?v=<%= System.currentTimeMillis() %>">
  <link rel="stylesheet" href="css/sub.css?v=<%= System.currentTimeMillis() %>">
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/jquery-ui.min.js"></script>
  <script src="js/swiper-bundle.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/ui-common.js?v=<?php echo time(); ?>"></script>
</head>

<body>
  <div id="skip_navi">
    <a href="#container">본문바로가기</a>
  </div>
  <div id="wrap">
    <header id="header" class="sub_header">
      <aside class="m_menu">
        <div class="black_bg"></div>
      </aside>
      <div class="inner">
        <section class="header_top">
          <ul class="top_menu">
            <li>
              <a href="#">
                구매포털시스템
                <img src="images/pc_images/link_arrow02.png" alt="">
              </a>
            </li>
            <li>
              <a href="#">
                인재채용
                <img src="images/pc_images/link_arrow02.png" alt="">
              </a>
            </li>
          </ul>
        </section>
        <section class="header_bottom">
          <h1 class="logo">
            <a href="../binggrae/index.jsp">
              <span class="blind">빙그레</span>
            </a>
          </h1>
          <nav class="gnb_wrap">
            <ul class="gnb">
              <li>
                <a href="#">회사소개</a>
                <ul class="depth2">
                  <li><a href="#">CEO인사말</a></li>
                  <li><a href="#">경영이념</a></li>
                  <li><a href="#">사업분야</a></li>
                  <li><a href="#">히스토리</a></li>
                </ul>
              </li>
              <li>
                <a href="#">제품소개</a>
                <ul class="depth2">
                  <li><a href="#">아이스크림</a></li>
                  <li><a href="#">우유/치즈</a></li>
                  <li><a href="#">발효유</a></li>
                  <li><a href="#">커피</a></li>
                  <li><a href="#">주스</a></li>
                  <li><a href="#">음료</a></li>
                  <li><a href="#">스낵/디저트</a></li>
                  <li><a href="#">건강지향</a></li>
                  <li><a href="#">수출제품</a></li>
                </ul>
              </li>
              <li>
                <a href="#">지속가능경영</a>
                <ul class="depth2">
                  <li><a href="#">지속가능경영 체계</a></li>
                  <li><a href="#">Eco-Friendly</a></li>
                  <li><a href="#">Shared Value</a></li>
                  <li><a href="#">Global Integrity</a></li>
                  <li><a href="#">윤리준법경영</a></li>
                  <li><a href="#">사회공헌</a></li>
                  <li><a href="#">보고서 및 정책</a></li>
                </ul>
              </li>
              <li>
                <a href="#">투자정보</a>
                <ul class="depth2">
                  <li><a href="#">재무정보</a></li>
                  <li><a href="#">주식정보</a></li>
                  <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a></li>
                  <li><a href="../freeboard/list.do">공시정보</a></li>
                  <li><a href="#">IR자료실</a></li>
                </ul>
              </li>
              <li>
                <a href="#">뉴스룸</a>
                <ul class="depth2">
                  <li><a href="#">새소식</a></li>
                  <li><a href="../databoard/list.do">보도자료</a></li>
                  <li><a href="#">빙그레 스토리</a></li>
                  <li><a href="#" style="white-space: normal; word-break: keep-all;">미디어 <br>라이브러리</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="/center/service">고객센터</a>
                <ul class="depth2">
                  <li><a href="#">고객상담</a></li>
                  <li><a href="#">제품공급문의</a></li>
                  <li><a href="#">사이버 신고센터</a></li>
                  <li><a href="#">안전신문고</a></li>
                  <li><a href="#">개인정보처리방침</a></li>
                </ul>
              </li>
            </ul>
          </nav>
          <div class="section_right">
            <div class="lang_wrap">
              <ul class="lang">
                <li><a href="#">KR</a></li>
                <li><img src="images/lang_btn.png"></li>
                <ul class="depth2">
                  <li><a class="active" href="#">KR</a></li>
                  <li><a href="#">EN</a></li>
                </ul>
              </ul>
            </div>
            <div class="login">
              <a class="login_btn" href="#">
                <span class="blind">로그인</span>
              </a>
            </div>
            <div class="hamberger">
              <button class="open_btn" type="button">
                <span class="blind">메뉴열기</span>
                <i></i>
                <i></i>
                <i></i>
              </button>
            </div>
          </div>
        </section>
        <!-- 모바일 메뉴 -->
        <aside class="m_gnb_wrap">
          <div class="m_gnb_top">
            <ul class="m_top_menu">
              <li>
                <a href="#">
                  <span>구매포털시스템</span>
                  <img src="images/pc_images/link_arrow02.png" alt="">
                </a>
              </li>
              <li>
                <a href="#">
                  <span>인재채용</span>
                  <img src="images/pc_images/link_arrow02.png" alt="">
                </a>
              </li>
              <button class="close_btn" type="button">
                <img src="images/ham_close.png">
              </button>
            </ul>
          </div>
          <div class="m_gnb_body">
            <ul class="m_gnb">
              <li>
                <a href="#">
                  <span>회사소개</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="#">CEO인사말</a><span class="circle"></span></li>
                  <li><a href="#">경영이념</a><span class="circle"></span></li>
                  <li><a href="#">사업분야</a><span class="circle"></span></li>
                  <li><a href="#">히스토리</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>제품소개</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li>
                    <a href="#">전체보기</a>
                    <span class="circle"></span>
                  </li>
                  <li>
                    <a href="#">아이스크림</a>
                  </li>
                  <li>
                    <a href="#">우유/치즈</a>
                  </li>
                  <li>
                    <a href="#">발효유</a>
                  </li>
                  <li>
                    <a href="#">커피</a>
                  </li>
                  <li>
                    <a href="#">주스</a>
                  </li>
                  <li>
                    <a href="#">음료</a>
                  </li>
                  <li>
                    <a href="#">스낵/디저트</a>
                  </li>
                  <li>
                    <a href="#">건강지향</a>
                  </li>
                  <li>
                    <a href="#">수출제품</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>지속가능경영</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="#">지속가능경영 체계</a><span class="circle"></span></li>
                  <li><a href="#">Eco-Friendly</a><span class="circle"></span></li>
                  <li><a href="#">Shared Value</a><span class="circle"></span></li>
                  <li><a href="#">Global Integrity</a><span class="circle"></span></li>
                  <li><a href="#">윤리준법경영</a><span class="circle"></span>
                  </li>
                  <li><a href="#">사회공헌</a><span class="circle"></span></li>
                  <li><a href="#">보고서 및 정책</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>투자정보</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="#">재무정보</a><span class="circle"></span></li>
                  <li><a href="#">주식정보</a><span class="circle"></span></li>
                  <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a><span class="circle"></span></li>
                  <li><a href="../freeboard/list.do">공시정보</a></li>
                  <li><a href="#">IR자료실</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>뉴스룸</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="#">전체보기</a><span class="circle"></span></li>
                  <li><a href="#">새소식</a><span class="circle"></span></li>
                  <li><a href="../databoard/list.do">보도자료</a><span class="circle"></span></li>
                  <li><a href="#">빙그레 스토리</a><span class="circle"></span></li>
                  <li><a href="#">미디어 라이브러리</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>고객센터</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="#">고객상담</a><span class="circle"></span></li>
                  <li><a href="#">제품공급문의</a></li>
                  <li><a href="#">사이버 신고센터</a><span class="circle"></span></li>
                  <li><a href="#">안전신문고</a><span class="circle"></span></li>
                  <li><a href="#">개인정보처리방침</a><span class="circle"></span></li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="m_gnb_bottom">
            <div class="m_lang_wrap">
              <ul class="m_lang">
                <li><a class="active" href="#">KR</a></li>
                <li><a href="#">EN</a></li>
              </ul>
            </div>
            <a href="#">오시는길</a>
          </div>
        </aside>
      </div>
    </header>
    <!-- pc hamberger 메뉴 -->
    <div class="pc_ham sub_ham">
      <div class="inner">
        <nav class="ham_gnb_wrap">
          <ul class="ham_gnb">
            <li><a href="#"><span>회사소개</span></a>
              <ul class="ham_depth2">
                <li><a href="#">CEO인사말</a></li>
                <li><a href="#">경영이념</a></li>
                <li><a href="#">사업분야</a></li>
                <li><a href="#">히스토리</a></li>
              </ul>
            </li>
            <li><a href="#">제품소개</a>
              <ul class="ham_depth2">
                <li><a href="#">전체보기</a></li>
                <li><a href="#">아이스크림</a></li>
                <li><a href="#">우유/치즈</a></li>
                <li><a href="#">발효유</a></li>
                <li><a href="#">커피</a></li>
                <li><a href="#">주스</a></li>
                <li><a href="#">음료</a></li>
                <li><a href="#">스낵/디저트</a></li>
                <li><a href="#">건강지향</a></li>
                <li><a href="#">수출제품</a></li>
              </ul>
            </li>
            <li><a href="#">지속가능경영</a>
              <ul class="ham_depth2">
                <li><a href="#">지속가능경영체계</a></li>
                <li><a href="#">Eco-Friendly</a></li>
                <li><a href="#">Shared Value</a></li>
                <li><a href="#">Global Integrity</a></li>
                <li><a href="#">윤리준법경영</a></li>
                <li><a href="#">사회공헌</a></li>
                <li><a href="#">보고서 및 정책</a></li>
              </ul>
            </li>
            <li><a href="#">투자정보</a>
              <ul class="ham_depth2">
                <li><a href="#">재무정보</a></li>
                <li><a href="#">주식정보</a></li>
                <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a></li>
                <li><a href="../freeboard/list.do">공시정보</a></li>
                <li><a href="#">IR자료실</a></li>
              </ul>
            </li>
            <li><a href="#">뉴스룸</a>
              <ul class="ham_depth2">
                <li><a href="#">전체보기</a></li>
                <li><a href="#">새소식</a></li>
                <li><a href="../databoard/list.do">보도자료</a></li>
                <li><a href="#">빙그레스토리</a></li>
                <li><a href="#">미디어라이브러리</a></li>
              </ul>
            </li>
            <li><a href="#">회사소개</a>
              <ul class="ham_depth2">
                <li><a href="#">CEO인사말</a></li>
                <li><a href="#">경영이념</a></li>
                <li><a href="#">사업분야</a></li>
                <li><a href="#">히스토리</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <!-- 로그인 내용 -->
    <main id="container" class="login_page sub_container">
      <div class="contents">
        <div class="inner">
          <div class="login_area">
            
            <span style="color: red; font-size:1.2em;">
            	<%= request.getAttribute("LoginErrMsg") == null ?
            			"" : request.getAttribute("LoginErrMsg") %>
            </span>
            <%
			if (session.getAttribute("UserId") == null) { // 로그인 상태 확인
				//로그아웃 상태
			%>
			<!-- 로그인 폼의 입력값을 서버로 전송하기 전에 검증하기 위해 정의한 함수.
			입력값이 빈값인지 확인하여 경고창을 띄워준다. -->
			<h2>ID 로그인</h2>
			<script>
		
			function validateForm(form) {
				if (!form.user_id.value) {
					// 입력된 값이 없으면 경고창을 띄우고..
					alert("아이디를 입력하세요.");
					// 입력을 위해 포커스를 이동하고..
					form.user_id.focus();
					// submit 이벤트 리스너쪽으로 false를 반환한다.
					return false;
				}
				if (form.user_pw.value == "") {
					alert("패스워드를 입력하세요.");
					form.user_pw.focus();
					return false;
				}
			}
			</script>
            <form action="LoginProcess.jsp" method="post" name="loginFrm"
            	onsubmit="return validateForm(this);">
              <fieldset>
                <legend>로그인</legend>
                <div class="row input_wrap1">
                  <input type="text" name="user_id" placeholder="아이디">
                </div>
                <div class="row input_wrap2">
                  <input type="password" name="user_pw" placeholder="비밀번호">
                </div>
                <div class="row row3">
                  <div class="checkbox_wrap">
                    <input id="check1" type="checkbox" class="blind">
                      <label for="check1">로그인 상태 유지</label>
                  </div>
                </div>
                <input type="submit" class="login_btn" value="로그인" />
            
	            <ul class="link_wrap">
	            <li><a href="forgot-password.jsp">비밀번호 찾기</a></li>
	            <li><a href="#">아이디 찾기</a></li>
	            <li><a href="register.jsp">회원가입</a></li>
	          	</ul>
              </fieldset>
            </form>
            <%
			} else { // 로그인된 상태
			%>

            <h2>마이페이지</h2>
			<form>
              <fieldset>
                <p><%= session.getAttribute("UserName") %>님, </p>
                <div class=mypage_btn>
	                <a href=setting.jsp class="reset_btn">
	                	정보수정
	                </a>
	                <a href=deleteMember.jsp class="delete_btn">
	                	회원탈퇴
	                </a>
                </div>
                <br />
                <a href="logout.jsp" class="login_btn">
                	로그아웃           
                </a>
              </fieldset>
            </form>
			<%
			}
			%>
			</div>    
        </div>
      </div>
    </main>
    <!-- 푸터 -->
    <footer id="footer" class="footer">
      <div class="inner">
        <section class="footer_top">
          <div class="row1">
            <div class="footer_logo">
              <img src="images/f_logo.png" alt="">
            </div>
            <div class="txt_wrap">
              <ul class="txt">
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">오시는길</a></li>
              </ul>
            </div>
          </div>
          <div class="row2">
            <p>회사명 : 빙그레</p>
            <p>경기도 남양주시 다산동 4344-3 / 경기도 남양주시 다산순환로 45(다산동)</p>
          </div>
        </section>
        <section class="footer_bottom">
          <div class="txt_wrap">
            <ul class="txt">
              <li><a href="#">고객센터</a></li>
              <li><a href="#">1:1이메일문의</a></li>
            </ul>
            <p class="copyright">ⓒ Binggrae all rights reserved.</p>
          </div>
          <div class="sns_wrap">
            <ul class="sns">
              <li>
                <a href="https://blog.naver.com/official_binggrae/" target="_blank"><img src="images/footer_sns04.png"
                    alt="binggrae"></a>
              </li>
              <li>
                <a href="https://www.instagram.com/binggraekorea/" target="_blank"><img src="images/footer_sns01.png"
                    alt=""></a>
              </li>
              <li>
                <a href="https://www.youtube.com/channel/UCOmz8eDBQ04h6i0_8p_V7eg" target="_blank"><img
                    src="images/footer_sns02.png" alt=""></a>
              </li>
              <li>
                <a href="https://www.tftmall.co.kr/main/index.php" target="_blank"><img src="images/footer_sns03.png"
                    alt=""></a>
              </li>
            </ul>
          </div>
        </section>
        <!-- 떠있는 버튼 -->
        <div class="btn_wrap">
          <a class="chat_bot" href="#">
            <img src="images/chat_img.png" alt="">
            <p>무엇을 도와드릴까요?</p>
          </a>
          <a class="shop_btn top_btn" href="#">SHOP</a>
          <a class="scroll_btn top_btn" href="#"><span class="blind">아래로 이동</span></a>
        </div>
      </div>
    </footer>
  </div>
</body>
</html>