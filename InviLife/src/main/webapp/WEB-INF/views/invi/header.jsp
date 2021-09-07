<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="../resources/slick-1.8.1/slick/slick.css">
<link rel="stylesheet" href="../resources/slick-1.8.1/slick/slick-theme.css">
<link rel="stylesheet" href="../resources/css/main.css">
</head>
<body>
	<header id="header">
         <div class="headerIn">
             <div class="header_content">
                 <h1 class="main_logo mo"><a href="#">로고</a></h1>
                 <div class="main_title"><a href="#">INVILIFE COFFEE</a></div> <!--.mainTitle-->

                 <div class="all_menu mo">
                     <a href="">
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
                     <!-- 
                         <li><a href="login">로그인</a></li>
                         <li>id: ${login.join_id }</li>
                         <li>pw: ${login.join_pw1 }</li>
                         <li><a href="membership">회원가입</a></li>
                      -->
                      
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
                            <li><a href="#">FAQ</a></li>
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