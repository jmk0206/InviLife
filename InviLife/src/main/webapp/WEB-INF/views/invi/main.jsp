<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>INVICOFFEE</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../resources/slick-1.8.1/slick/slick.css">
    <link rel="stylesheet" href="../resources/slick-1.8.1/slick/slick-theme.css">
    <link rel="stylesheet" href="../resources/css/main.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <div class="header_content">
                    <h1 class="main_logo mo"><a href="/invi/main">로고</a></h1>
                    <div class="main_title"><a href="/invi/main">INVILIFE COFFEE</a></div> <!--.mainTitle-->

                    <div class="all_menu mo">
                        <a href="#">
                            <span>전체메뉴 열기</span>
                        </a>
                    </div> <!--.mo_menu-->

                    <nav class="pc_gnb pc">
                        <ul class="menu">
                            <li><a href="#">소개</a></li>
                            <li><a href="#">메뉴</a></li>
                            <li><a href="#">멤버십</a></li>
                            <li><a href="#">이벤트 및 공지사항</a></li>
                            <li><a href="#">지점</a></li>
                        </ul> <!--.menu-->

                        <div class="menu_category">
                            <ul>
                                <li class="store_intro">
                                    <p><a href="#">매장</a></p>
                                    <p><a href="#">창업</a></p>
                                </li> <!--.store_intro-->
    
                                <li class="menu_intro">
                                    <p><a href="#">커피</a></p>
                                    <p><a href="#">음료</a></p>
                                    <p><a href="#">베이커리</a></p>
                                    <p><a href="#">신메뉴</a></p>
                                </li> <!--.menu_intro-->
    
                                <li class="membership_intro">
                                    <p><a href="#">가입</a></p>
                                    <p><a href="#">멤버십 혜택</a></p>
                                    <p><a href="#">선물하기</a></p>
                                    <p><a href="/board/list">FAQ</a></p> <!-- board/list로 이동 -->
                                </li> <!--.membership_intro-->
    
                                <li class="notice_intro">
                                    <p><a href="#">이벤트</a></p>
                                    <p><a href="#">공지사항</a></p>
                                    <p><a href="#">레시피</a></p>
                                    <p><a href="https://www.kakaocorp.com/page/service/service/KakaoTalk" target="_blank">인비라이프 카카오톡</a></p>
                                    <p><a href="https://www.facebook.com/" target="_blank">인비라이프 페이스북</a></p>
                                    <p><a href="https://www.instagram.com/" target="_blank">인비라이프 인스타그램</a></p>
                                </li> <!--.notice_intro-->
    
                                <li class="position_intro">
                                    <p><a href="">매장 위치</a></p>
                                    <p><a href="">오시는 길</a></p>
                                </li> <!--position_intro-->
                            </ul>
                        </div> <!--.menu_category-->
                    </nav> <!--.pc_gnb-->

                    <div class="pc_util pc">
                        <ul class="pc_topBar">                         
                         <c:catch>
                         	<c:choose>
                         		<c:when test="${empty login }">
                         			<li><a href="login">로그인</a></li>
                         			<li><a href="membership">회원가입</a></li>
                         		</c:when>
                         		<c:otherwise>
                         			<li><a href="#">${login.join_id}님</a></li>
                         			<li><a href="logout">로그아웃</a></li>
                         		</c:otherwise>
                        	</c:choose>
                         </c:catch>
                          
                            <li><a href="#">고객센터</a></li>
                        </ul>

                        <ul class="pc_lang pc">
                            <li><a href="#">KOR</a></li>
                            <li><a href="#">ENG</a></li>
                        </ul>
                    </div> <!--.pc_util-->
                </div> <!--.header_content-->
            </div> <!--.headerIn-->
        </header> <!--.#header-->
        
        <div class="container">
            <div class="coffee_info">
                <div class="coffee_img">
                    <div><img src="../resources/img/coffee/cinnamon_coffee.jpg" alt="시나몬 커피"></div>
                    <div><img src="../resources/img/coffee/bluberries_coffee.jpg" alt="블루베리 커리"></div>
                    <div><img src="../resources/img/coffee/cappuccino.jpg" alt="카푸치노"></div>
                    <div><img src="../resources/img/coffee/marshmallow_coffee.jpg" alt="마시멜로우 커피"></div>
                    <div><img src="../resources/img/coffee/espresso.jpg" alt="에스프레소"></div>
                </div>
            </div> <!--.coffe_info-->

            
            <div class="coffee_beans_info">
                <span><img src="../resources/img/coffee/coffee_beans2.jpg" alt="커피 원두 소개"></span>



                <p class="more_btn"><a href="#">more</a></p>
            </div> <!--.coffee_beans_info-->

            <div class="store_info">
                <span><img src="../resources/img/coffee/store3.jpg" alt=""></span>
                <div class="store_introduction">
                    <h2 class="store_txt1">언제나 고객의 만족을 위하여 <br>최선을 다하겠습니다.</h2>
                    <p class="store_txt2">인비라이프는 국내브랜드로 최고의 맛과 <br>저렴한 가격으로 정직한 커피를 제공합니다.</p>
                </div>  <!--.store_introduction-->

                <p class="more_btn"><a href="#">more</a></p>
            </div> <!--.store_info-->

            <div class="search_notice_info">

                <div class="search_info">
                    <h2>매장찾기</h2>
                    <p class="search_text">주변 매장을 검색 후 방문해 보세요!</p>

                    <div class="search">
                        <form action="" name="search_box">
                            <fieldset>
                                <legend>가게 검색</legend>
                            </fieldset>
                            <input type="text" class="search_text" name="sc_name" id="sc_name" placeholder="FIND A STORE">
                            <button class="search_btn" id="sc_submit">검색</button>
                        </form>
                    </div> <!--.search-->

                    <div class="search_logo">로고</div> <!--.search_logo-->
                </div> <!--.search_info-->

                <div class="notice_info">
                    <h2>인비라이프 소식</h2>

                    <ul>
                        <li><a href="#"><span>21년도 상반기 인비라이프 커피 기부활동 현황</span> <span>2021.06.07</span></a></li>
                        <li><a href="#"><span>INVILIFE COFFEE X MARBLE 텀블러 사전예약</span> <span>2021.06.04</span></a></li>
                        <li><a href="#"><span>21년도 상반기 인비라이프 커피 봉사활동 현황</span> <span>2021.05.28</span></a></li>
                        <li><a href="#"><span>INVILILFE 홈페이지 개설 안내</span> <span>2021.05.21</span></a></li>
                    </ul>

                    <div class="btn_more"><a href="">more</a></div>
                </div> <!--.notice_info-->

            </div> <!--.notice_event_info-->
        </div> <!--.container-->
        
        <footer id="footer">
            <div class="footerIn">
                <div class="f_title"><a href="#">INVILIFE</a></div> <!--.f_title-->
                <div class="f_navi">
                    <ul>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact us</a></li>
                    </ul>
                </div> <!--.f_navi-->     
                
                <div class="f_menu">
                    <ul>
                        <li class="point"><a href="">개인정보처리방침</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">자주 묻는 질문</a></li>
                        <li><a href="#">이용약관</a></li>
                    </ul>
                </div> <!--.f_menu-->

                <div class="f_info">
                    <ul>
                        <li>울산광역시 남구 야음로 288 인비라이프빌딩(울산광역시 남구 야음동 888-19)</li>
                        <li>사업자등록번호 : 111-11-11111</li>
                        <li>(주)인비라이프커피 대표이사 : 김진명</li>
                        <li>TEL : 1588-1234</li>
                        <li>개인정보 책임자 : 김진명</li>
                    </ul>
                </div> <!--.f_info-->

                <div class="copyright">
                    Copyright &copy; 2021 InviLife Coffee Company. All Rights Reserved.
                </div> <!--.copyright-->

                <div class="f_icon">
                    <p class="f_kakao"><a href="https://www.kakaocorp.com/page/service/service/KakaoTalk" target="_blank">카카오 바로가기</a></p>
                    <p class="f_fb"><a href="https://www.facebook.com/" target="_blank">페이스북 바로가기</a></p>
                    <p class="f_ins"><a href="https://www.instagram.com/" target="_blank">인스타그램 바로가기</a></p>
                </div> <!--.f_icon-->

                <div class="f_top"><a href="">TOP</a></div> <!--top-->
            </div> <!--.footerIn-->
        </footer> <!--#footer-->
 
    </div> <!--#wrap-->

    <!-- side -->

    <div id="side">
        <c:catch>
          	<c:choose>
          		<c:when test="${empty login }">
          		<div class="s_login">
          			<a href="login">로그인</a>
          		</div> <!--.s_login-->
         		</c:when>
         		<c:otherwise>
          		<div class="s_user">
          			<a href="#">${login.join_id}님</a>
          		</div> <!--.s_user-->
         		</c:otherwise>
      	    </c:choose>
        </c:catch>
        <nav class="s_gnb">
            <ul>
                <li class="d1">
                    <a href="#" class="m1">소개</a> <!--.m1-->
                    <div class="sub">
                        <ul>
                            <li><a href="#">매장</a></li>
                            <li><a href="#">창업</a></li>
                            <li><a href="#">매장 이야기</a></li>
                        </ul>
                    </div> <!--.sub-->
                </li> <!--1번메뉴-->

                <li class="d1">
                    <a href="#" class="m1">메뉴</a> <!--.m1-->
                    <div class="sub">
                        <ul>
                            <li><a href="#">커피</a></li>
                            <li><a href="#">음료</a></li>
                            <li><a href="#">베이커리</a></li>
                            <li><a href="#">신메뉴</a></li>
                        </ul>
                    </div> <!--.sub-->
                </li> <!--2번메뉴-->

                <li class="d1">
                    <a href="#" class="m1">멤버쉽</a> <!--.m1-->
                    <div class="sub">
                        <ul>
                            <li><a href="#">가입</a></li>
                            <li><a href="#">멤버십 혜택</a></li>
                            <li><a href="#">선물하기</a></li>
                            <li><a href="/board/list">FAQ</a></li>
                        </ul>
                    </div> <!--.sub-->
                </li> <!--3번메뉴-->

                <li class="d1">
                    <a href="#" class="m1">이벤트 및 공지사항</a> <!--.m1-->
                    <div class="sub">
                        <ul>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">레시피</a></li>
                            <li><a href="https://www.kakaocorp.com/page/service/service/KakaoTalk" target="_blank">인비라이프 카카오톡</a></li>
                            <li><a href="https://www.facebook.com/" target="_blank">인비라이프 페이스북</a></li>
                            <li><a href="https://www.instagram.com/" target="_blank">인비라이프 인스타그램</a></li>
                        </ul>
                    </div> <!--.sub-->
                </li> <!--4번메뉴-->

                <li class="d1">
                    <a href="#" class="m1">지점</a> <!--.m1-->
                    <div class="sub">
                        <ul>
                            <li><a href="#">매장 위치</a></li>
                            <li><a href="#">오시는 길</a></li>
                        </ul>
                    </div> <!--.sub-->
                </li> <!--5번메뉴-->
            </ul>
        </nav> <!--.s_gnb-->

        <div class="s_close"><a href="#">사이드 닫기</a></div> <!--s_close-->
        
        <div class="s_logout">
	     	<c:catch>
	          	<c:choose>
	          		<c:when test="${empty login }">
	         		</c:when>
	         		<c:otherwise>
	          			<a href="logout">로그아웃</a>
	         		</c:otherwise>
	      	    </c:choose>
	        </c:catch>
        </div>
    </div> <!--#side-->

    <script src="../resources/slick-1.8.1/slick/slick.js"></script>
    <script src="../resources/js/script.js"></script>
</body>
</html>