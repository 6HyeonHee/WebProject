
<%@page import="freeboard.FreeBoardDTO"%>
<%@page import="utils.CookieManager"%>
<%@page import="freeboard.FreeBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../binggrae/inc/main_header.jsp" %> <!-- 헤드 코드 -->
<%
// 파라미터로 전달된 게시물의 일련번호를 받아온다.
String idx = request.getParameter("idx");
// DAO 인스턴스 생성
FreeBoardDAO dao = new FreeBoardDAO();

String ckValue = CookieManager.readCookie(request, "board-"+ idx);
if(!ckValue.equals("read")) {
	CookieManager.makeCookie(response, "board-"+idx, "read", 1000);
	dao.updateVisitCount(idx);
}


// 출력할 게시물 인출
FreeBoardDTO dto = dao.selectView(idx);
// DB 연결 해제
dao.close();
%>
<script>

//게시물 삭제를 위해 정의한 함수
function deletePost() {

 var confirmed = confirm("정말로 삭제하겠습니까?"); 
 if (confirmed) {

     var form = document.writeFrm;

     form.method = "post"; 
     form.action = "../freeboard/delete.do"; 
     form.submit();
 }
}
 </script>
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
                <img src="../binggrae/images/pc_../binggrae/images/link_arrow02.png" alt="">
              </a>
            </li>
            <li>
              <a href="#">
                인재채용
                <img src="../binggrae/images/pc_../binggrae/images/link_arrow02.png" alt="">
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
                <a href="/company/ceo">회사소개</a>
                <ul class="depth2">
                  <li><a href="/company/ceo">CEO인사말</a></li>
                  <li><a href="/company/philosophy">경영이념</a></li>
                  <li><a href="/company/business">사업분야</a></li>
                  <li><a href="/company/history">히스토리</a></li>
                </ul>
              </li>
              <li>
                <a href="/product/list">제품소개</a>
                <ul class="depth2">
                  <li><a href="/product/list?type=1">아이스크림</a></li>
                  <li><a href="/product/list?type=2">우유/치즈</a></li>
                  <li><a href="/product/list?type=3">발효유</a></li>
                  <li><a href="/product/list?type=4">커피</a></li>
                  <li><a href="/product/list?type=10">주스</a></li>
                  <li><a href="/product/list?type=9">음료</a></li>
                  <li><a href="/product/list?type=5">스낵/디저트</a></li>
                  <li><a href="/product/list?type=11">건강지향</a></li>
                  <li><a href="/product/list?type=7">수출제품</a></li>
                </ul>
              </li>
              <li>
                <a href="/esg/esg">지속가능경영</a>
                <ul class="depth2">
                  <li><a href="/esg/esg">지속가능경영 체계</a></li>
                  <li><a href="/esg/eco">Eco-Friendly</a></li>
                  <li><a href="/esg/value">Shared Value</a></li>
                  <li><a href="/esg/global">Global Integrity</a></li>
                  <li><a href="/esg/ethics">윤리준법경영</a></li>
                  <li><a href="/esg/contribution">사회공헌</a></li>
                  <li><a href="/esg/reports">보고서 및 정책</a></li>
                </ul>
              </li>
              <li>
                <a href="/investment/invest_finance">투자정보</a>
                <ul class="depth2">
                  <li><a href="/investment/invest_finance">재무정보</a></li>
                  <li><a href="/investment/stocks">주식정보</a></li>
                  <li><a class="active" href="../binggrae/invest-aanouce-list.jsp">전자공고</a></li>
                  <li><a href="../freeboard/list.do">공시정보</a></li>
                  <li><a href="/investment/ir">IR자료실</a></li>
                </ul>
              </li>
              <li>
                <a href="/news/news_home">뉴스룸</a>
                <ul class="depth2">
                  <li><a href="/news/news_new">새소식</a></li>
                  <li><a href="../databoard/list.do">보도자료</a></li>
                  <li><a href="/news/news_story">빙그레 스토리</a></li>
                  <li><a href="/news/media_sound" style="white-space: normal; word-break: keep-all;">미디어 <br>라이브러리</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="/center/service">고객센터</a>
                <ul class="depth2">
                  <li><a href="/center/service">고객상담</a></li>
                  <li><a href="/center/supply?prod_cat_idx=1">제품공급문의</a></li>
                  <li><a href="/center/cyber">사이버 신고센터</a></li>
                  <li><a href="/center/safe">안전신문고</a></li>
                  <li><a href="/support/privacy">개인정보처리방침</a></li>
                </ul>
              </li>
            </ul>
          </nav>
          <div class="section_right">
            <div class="lang_wrap">
              <ul class="lang">
                <li><a href="#">KR</a></li>
                <li><img src="../binggrae/images/lang_btn.png"></li>
                <ul class="depth2">
                  <li><a class="active" href="#">KR</a></li>
                  <li><a href="#">EN</a></li>
                </ul>
              </ul>
            </div>
            <div class="login">
              <a class="login_btn" href="../binggrae/login.jsp">
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
                  <img src="../binggrae/images/pc_../binggrae/images/link_arrow02.png" alt="">
                </a>
              </li>
              <li>
                <a href="#">
                  <span>인재채용</span>
                  <img src="../binggrae/images/pc_../binggrae/images/link_arrow02.png" alt="">
                </a>
              </li>
              <button class="close_btn" type="button">
                <img src="../binggrae/images/ham_close.png">
              </button>
            </ul>
          </div>
          <div class="m_gnb_body">
            <ul class="m_gnb">
              <li>
                <a href="#">
                  <span>회사소개</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="/company/ceo">CEO인사말</a><span class="circle"></span></li>
                  <li><a href="/company/philosophy">경영이념</a><span class="circle"></span></li>
                  <li><a href="/company/business">사업분야</a><span class="circle"></span></li>
                  <li><a href="/company/history">히스토리</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>제품소개</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li>
                    <a href="/product/list">전체보기</a>
                    <span class="circle"></span>
                  </li>
                  <li>
                    <a href="/product/list?type=1">아이스크림</a>
                  </li>
                  <li>
                    <a href="/product/list?type=2">우유/치즈</a>
                  </li>
                  <li>
                    <a href="/product/list?type=3">발효유</a>
                  </li>
                  <li>
                    <a href="/product/list?type=4">커피</a>
                  </li>
                  <li>
                    <a href="/product/list?type=10">주스</a>
                  </li>
                  <li>
                    <a href="/product/list?type=9">음료</a>
                  </li>
                  <li>
                    <a href="/product/list?type=5">스낵/디저트</a>
                  </li>
                  <li>
                    <a href="/product/list?type=11">건강지향</a>
                  </li>
                  <li>
                    <a href="/product/list?type=7">수출제품</a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>지속가능경영</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="/esg/esg">지속가능경영 체계</a><span class="circle"></span></li>
                  <li><a href="/esg/eco">Eco-Friendly</a><span class="circle"></span></li>
                  <li><a href="/esg/value">Shared Value</a><span class="circle"></span></li>
                  <li><a href="/esg/global">Global Integrity</a><span class="circle"></span></li>
                  <li><a href="/esg/ethics">윤리준법경영</a><span class="circle"></span>
                  </li>
                  <li><a href="/esg/contribution">사회공헌</a><span class="circle"></span></li>
                  <li><a href="/esg/reports">보고서 및 정책</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>투자정보</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="/investment/invest_finance">재무정보</a><span class="circle"></span></li>
                  <li><a href="/investment/stocks">주식정보</a><span class="circle"></span></li>
                  <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a><span class="circle"></span></li>
                  <li><a href="../freeboard/list.do">공시정보</a></li>
                  <li><a href="/investment/ir">IR자료실</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>뉴스룸</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="/news/news_home">전체보기</a><span class="circle"></span></li>
                  <li><a href="/news/news_new">새소식</a><span class="circle"></span></li>
                  <li><a href="../databoard/list.do">보도자료</a><span class="circle"></span></li>
                  <li><a href="/news/news_story">빙그레 스토리</a><span class="circle"></span></li>
                  <li><a href="/news/media_sound">미디어 라이브러리</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>고객센터</span>
                  <img src="../binggrae/images/m_ham_menu_btn.png" alt="">
                </a>
                <ul class="depth2">
                  <li><a href="/center/service">고객상담</a><span class="circle"></span></li>
                  <li><a href="/center/supply?prod_cat_idx=1">제품공급문의</a></li>
                  <li><a href="/center/cyber">사이버 신고센터</a><span class="circle"></span></li>
                  <li><a href="/center/safe">안전신문고</a><span class="circle"></span></li>
                  <li><a href="/support/privacy">개인정보처리방침</a><span class="circle"></span></li>
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
    <main id="container" class="invest-announce sub_container">
      <div class="tit_wrap">
        <div class="inner">
          <ul class="tit_top">
            <li class="home_icon">
              <a href="../binggrae/index.jsp"></a>
            </li>
            <li>투자정보</li>
            <li>전자공고</li>
          </ul>
          <div class="sub_tit">
            <h3>투자정보</h3>
          </div>
          <div class="tit_tab">
            <ul class="tab_list">
              <li><a href="#">재무정보</a></li>
              <li><a href="#">주식정보</a></li>
              <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a></li>
              <li class="active"><a href="../freeboard/list.do">공시정보</a></li>
              <li><a href="#">IR자료실</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="contents">
<form name="writeFrm" method="post">
    <input type="hidden" name="idx" value="${dto.idx}">
        <div class="inner">
          <div class="board_view">
            <div class="board_box">
              <div class="view_tit">
                <h3>${ dto.title }</h3>
                <span class="date">${ dto.postdate }</span>
              </div>
              <div class="view_con">
                ${ dto.content }
              </div>
              <tr>
		        <td>첨부파일 : </td>
		        <td>
              	<!-- 글 작성시 첨부파일은 필수사항이 아니므로 첨부한 경우에만 다운로드 링크를 화면에 출력한다. -->
<c:if test="${ not empty dto.ofile }">
	${ dto.ofile }
	<a href="../freeboard/download.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">
	    [다운로드]
	</a>
</c:if>
		        	
		        </td>
		        <td>다운로드수 : </td>
		        <td>${ dto.downcount }</td>
    		  </tr> 
            </div>
    <div class="btn_wrap">
<%
    String UserId = (String) session.getAttribute("UserId");
%>
<c:if test="${ UserId != null && UserId != '' && UserId == dto.id }">
        <button type="button" class="content_btn"
            onclick="location.href='../freeboard/edit.do?mode=edit&idx=${param.idx}';">
            수정하기
        </button>
        <button type="button" class="content_btn"
            onclick="deletePost()">
            삭제하기
        </button>
</c:if>
              <a class="point_btn3" href="../freeboard/list.do">목록</a>
            </div>
          </div>
        </div>
</form>
      </div>
    </main>
    <!-- 푸터 -->
    <footer id="footer" class="footer">
      <div class="inner">
        <section class="footer_top">
          <div class="row1">
            <div class="footer_logo">
              <img src="../binggrae/images/f_logo.png" alt="">
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
                <a href="https://blog.naver.com/official_binggrae/" target="_blank"><img src="../binggrae/images/footer_sns04.png"
                    alt="binggrae"></a>
              </li>
              <li>
                <a href="https://www.instagram.com/binggraekorea/" target="_blank"><img src="../binggrae/images/footer_sns01.png"
                    alt=""></a>
              </li>
              <li>
                <a href="https://www.youtube.com/channel/UCOmz8eDBQ04h6i0_8p_V7eg" target="_blank"><img
                    src="binggrae/../binggrae/images/footer_sns02.png" alt=""></a>
              </li>
              <li>
                <a href="https://www.tftmall.co.kr/main/index.php" target="_blank"><img src="binggrae/../binggrae/images/footer_sns03.png"
                    alt=""></a>
              </li>
            </ul>
          </div>
        </section>
        <!-- 떠있는 버튼 -->
        <div class="btn_wrap">
          <a class="chat_bot" href="#">
            <img src="../binggrae/images/chat_img.png" alt="">
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