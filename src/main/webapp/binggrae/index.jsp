<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="css/common.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="css/main.css?v=<?php echo time(); ?>">
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
    <header id="header">
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
                  <li><a href="../binggrae/invest-aanouce-list.jsp">전자공고</a></li>
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
                <li><img src="images/lang_btn.png"></li>
                <ul class="depth2">
                  <li><a href="#">KR</a></li>
                  <li><a href="#">EN</a></li>
                </ul>
              </ul>
            </div>
            <div class="login">
            <% if (session.getAttribute("UserId") == null) { %>
              <a class="login_btn" href="../binggrae/login.jsp">
                <span class="blind">로그인</span>
              </a>
            <% } else { %>
              <a class="login_btn" href="../binggrae/login.jsp">
                <span class="blind">마이페이지</span>
              </a>
            <% } %>
             
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
                  <li><a href="/company/ceo">CEO인사말</a><span class="circle"></span></li>
                  <li><a href="/company/philosophy">경영이념</a><span class="circle"></span></li>
                  <li><a href="/company/business">사업분야</a><span class="circle"></span></li>
                  <li><a href="/company/history">히스토리</a><span class="circle"></span></li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <span>제품소개</span>
                  <img src="images/m_ham_menu_btn.png" alt="">
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
                  <img src="images/m_ham_menu_btn.png" alt="">
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
                  <img src="images/m_ham_menu_btn.png" alt="">
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
                  <img src="images/m_ham_menu_btn.png" alt="">
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
                  <img src="images/m_ham_menu_btn.png" alt="">
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
    <div class="pc_ham">
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
    <!-- 메인 내용 -->
    <main id="container">
      <section class="main_slider">
        <div class="logo_box">
          <img class="pc_img" src="images/pc_images/sec01_logo_5.png" alt="">
          <img class="m_img" src="images/m_images/m_sec01_logo_5.png">
        </div>
        <div class="search_area">
          <form>
            <fieldset>
              <legend>검색창</legend>
              <div class="search_wrap">
                <input type="search" title="제품명을 입력해주세요." placeholder="제품명을 입력해주세요.">
                <button class="search_btn" type="button">
                  <span>SEARCH</span>
                </button>
              </div>
            </fieldset>
          </form>
        </div>
        <div class="hashtag">
          <ul class="tag_box">
            <li><a href="#">#바나나맛우유</a></li>
            <li><a href="#">#더단백</a></li>
            <li><a href="#">#슈퍼콘</a></li>
            <li><a href="#">#요플레</a></li>
            <li><a href="#">#아카페라</a></li>
          </ul>
        </div>
      </section>
      <section class="main_product">
        <div class="inner">
          <h2 class="tit_wrap">행복한 빙그레의 맛</h2>
          <div class="product_wrapper">
            <div class="swiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up">
                    <li>
                      <a class="img_box" href="#"><img src="images/product01.png"></a>
                      <a class="txt_box" href="#"><span>아이스크림</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="100">
                    <li>
                      <a class="img_box" href="#"><img src="images/product02.png"></a>
                      <a class="txt_box" href="#"><span>우유/치즈</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="200">
                    <li>
                      <a class="img_box" href="#"><img src="images/product03.png"></a>
                      <a class="txt_box" href="#"><span>발효유</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="300">
                    <li>
                      <a class="img_box" href="#"><img src="images/product04.png"></a>
                      <a class="txt_box" href="#"><span>커피</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="400">
                    <li>
                      <a class="img_box" href="#"><img src="images/product05.png"></a>
                      <a class="txt_box" href="#"><span>주스</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="500">
                    <li>
                      <a class="img_box" href="#"><img src="images/product06.png"></a>
                      <a class="txt_box" href="#"><span>음료</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="600">
                    <li>
                      <a class="img_box" href="#"><img src="images/product07.png"></a>
                      <a class="txt_box" href="#"><span>스낵/디저트</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide" data-aos="fade-up" data-aos-delay="700">
                  <ul class="product">
                    <li>
                      <a class="img_box" href="#"><img src="images/product08.png"></a>
                      <a class="txt_box" href="#"><span>건강지향</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="product" data-aos="fade-up" data-aos-delay="800">
                    <li>
                      <a class="img_box" href="#"><img src="images/product09.png"></a>
                      <a class="txt_box" href="#"><span>수출제품</span></a>
                      <a class="view_txt" href="#"><span>VIEW MORE</span></a>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="swiper-button-prev arrow_btn"></div>
              <div class="swiper-button-next arrow_btn"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="m_product_wrapper">
        <div class="inner">
          <h2 class="m_tit">행복한 빙그레의 맛</h2>
        </div>
        <div class="swiper">
          <div class="swiper-wrapper" data-aos="fade-up">
            <div class="swiper-slide">
              <ul class="m_product">
                <li>
                  <a class="img_box" href="#"><img src="images/product01.png"></a>
                  <a class="txt_box" href="#"><span>아이스크림</span></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/product02.png"></a>
                  <a class="txt_box" href="#"><span>우유/치즈</span></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_product">
                <li>
                  <a class="img_box" href="#"><img src="images/product03.png"></a>
                  <a class="txt_box" href="#"><span>발효유</span></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/product04.png"></a>
                  <a class="txt_box" href="#"><span>커피</span></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_product">
                <li>
                  <a class="img_box" href="#"><img src="images/product05.png"></a>
                  <a class="txt_box" href="#"><span>주스</span></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/product06.png"></a>
                  <a class="txt_box" href="#"><span>음료</span></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_product">
                <li>
                  <a class="img_box" href="#"><img src="images/product07.png"></a>
                  <a class="txt_box" href="#"><span>스낵/디저트</span></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/product08.png"></a>
                  <a class="txt_box" href="#"><span>건강지향</span></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_product">
                <li>
                  <a class="img_box" href="#"><img src="images/product09.png"></a>
                  <a class="txt_box" href="#"><span>수출제품</span></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </section>
      <section class="main_brand">
        <div class="inner">
          <h2 class="tit_wrap">BRAND SHOP</h2>
          <div class="brand_wraaper">
            <div class="swiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand01.png" alt="더단백">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand01.png" alt="더단백">
                        <p>빙그레 건강 tft의<br>단백질 전문 브랜드</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="100">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand02.png" alt="아카페라">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand02.png" alt="아카페라">
                        <p>부담없는 캐주얼한 커피</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="200">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand03.png" alt="요플레">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand03.png" alt="요플레">
                        <p>39년 전통의<br>대한민국 Heritage</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="300">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand04.png" alt="바나나맛우유">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand04.png" alt="바나나맛우유">
                        <p>대한민국을 대표하는<br>No.1 가공우유</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="400">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand05.png" alt="끌레도르">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand05.png" alt="끌레도르">
                        <p>진한 맛의 감동<br>프리미엄 아이스크림</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="500">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand06.png" alt="마노플랜">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand06.png" alt="마노플랜">
                        <p>남자를 위한 건강플랜,<br>마노플랜</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
                <div class="swiper-slide">
                  <ul class="brand" data-aos="fade-up" data-aos-delay="600">
                    <li>
                      <a class="logo_box" href="#">
                        <img src="images/pc_images/pc_brand07.png" alt="비바시티">
                      </a>
                      <div class="hover_box">
                        <img src="images/pc_images/pc_brand07.png" alt="비바시티">
                        <p>맛과 건강의 완벽한 조화,<br>비바시티</p>
                      </div>
                      <button class="buy_btn" type="button">구입하기</button>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="swiper-button-prev arrow_btn"></div>
              <div class="swiper-button-next arrow_btn"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="m_brand_wrapper">
        <div class="inner">
          <h2 class="m_tit">BRAND SHOP</h2>
        </div>
        <div class="swiper">
          <div class="swiper-wrapper" data-aos="fade-up">
            <div class="swiper-slide">
              <ul class="m_brand">
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand01.png"></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand02.png"></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_brand">
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand03.png"></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand04.png"></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_brand">
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand05.png"></a>
                </li>
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand06.png"></a>
                </li>
              </ul>
            </div>
            <div class="swiper-slide">
              <ul class="m_brand">
                <li>
                  <a class="img_box" href="#"><img src="images/m_images/m_brand07.png"></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </section>
      <section class="main_qna">
        <div class="inner" data-aos="fade-up">
          <h2 class="tit_wrap">고객문의 및 불편사항</h2>
          <div class="qna_box1">
            <div class="row1" data-aos="fade-up">
              <a class="email" href="#">
                <h3>이메일 상담</h3>
                <p>빙그레에 궁금한 사항을<br>문의해 주세요</p>
                <span>최대한 빠른 시일내에<br>친절하게 답변해드리겠습니다.</span>
                <button class="email_btn" type="button">상담하기</button>
              </a>
              <div class="phone">
                <h3>전화 상담</h3>
                <p>080.022.0056</p>
                <span>월~금(공휴일 제외)<strong>09:00~17:30</strong></span>
              </div>
            </div>
            <div class="row2">
              <h3>자주 묻는 질문에 내용이 없을 경우, 이메일 및 전화 상담 바랍니다.</h3>
              <button class="more_btn" type="button" data-aos="fade-up">더보기</button>
            </div>
            <div class="row3 qna_list">
              <ul class="col1 col">
                <li>
                  <a href="#"><strong>Q.</strong>빙그레 건강기능식품을 주문할 수 있는 몰이 따로 있나요?</a>
                  <button class="link_btn" type="button"></button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="#"><strong>Q.</strong>제품 소비기한 뒤에 있는 알파벳 기호는 무엇인가요?</a>
                  <button class="link_btn" type="button"></button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="#"><strong>Q.</strong>요플레 분리배출(라벨 제거) 방법 알려주세요.</a>
                  <button class="link_btn" type="button">
                  </button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
              </ul>
              <ul class="col2 col">
                <li>
                  <a href="#"><strong>Q.</strong>아이스크림에는 왜 소비기한이 없나요?</a>
                  <button class="link_btn" type="button"></button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="#"><strong>Q.</strong>아이스크림, 음료 등 제품 공급(납품) 관련 문의드리고 싶어요. </a>
                  <button class="link_btn" type="button"></button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="#"><strong>Q.</strong>빙그레 제품을 구입할 수 있는 온라인 몰이 있나요? </a>
                  <button class="link_btn" type="button"></button>
                  <a class="m_link_btn" href="#">
                    <img src="images/m_images/m_link_arrow01.png" alt="">
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <h2 class="tit_wrap">빙그레 임직원 및 종사자 온라인제보</h2>
          <div class="qna_box2">
            <div class="box2_left box2">
              <a href="#">
                <p>빙그레 임직원의 부당한 요구 또는 업무처리,<br>인권고충, 기타 부정행위 제보
                  <button class="link_btn2" type="button">사이버 신고센터</button></p>
              </a>
            </div>
            <div class="box2_right box2">
              <a href="#">
                <p>빙그레 종사자의 유해·위험요소 및 안전·보건에 관한 의견 제보
                  <button class="link_btn2" type="button">안전신문고</button></p>
              </a>
            </div>
          </div>
        </div>
      </section>
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