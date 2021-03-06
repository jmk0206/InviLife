<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>INVICOFFEE LOGIN</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
    <div id="wrap">
        <div id="header">
            <div id="headerIn">
                <h1 id="login_logo"><a href="main">인비라이프 로고</a></h1>

                <div id="login_lang">
                    <select name="login_lang_in" id="login_lang_in">
                        <option value="KOR">KOR</option>
                        <option value="ENG">ENG</option>
                    </select> <!--#login_lang-->
                </div> <!--#login_lang-->
            </div> <!--#headerIn-->
        </div> <!--#header-->

        <div id="container">
            <div id="containerIn">
                <form action="login" method="post">
                    <ul id="user_login">
                        <li>
                            <input type="text" id="user_id" class="lg_select" name="join_id" placeholder="아이디" required autofocus>
                        </li>

                        <li class="loginPw">
                            <input type="password" id="user_pw" class="lg_select" name="join_pw1" placeholder="비밀번호" required>
                		<c:if test="${msg == false }">
							<p class="loginError">* 로그인에 실패하였습니다. 아이디 또는 비밀번호를 다시 입력해주십시오.</p>
						</c:if>
                        </li>
                        
                        <li>
                            <input type="submit" value="로그인" id="login_button">
                        </li>
                    </ul> 
                    
                    <label for="login_checkbox" class="log_checkbox"><input type="checkbox" id="login_checkbox">로그인 상태 유지</label>
                </form> <!--#user_login-->

                <ul id="search_login">
                    <li class="member"><a href="membership">회원가입</a></li> <!--.member-->
                    <li class="search_id"><a href="#">아이디 찾기</a></li>
                    <li class="search_pw"><a href="#">비밀번호 찾기</a></li>
                </ul> <!--#search_login-->
            </div> <!--#containerIn-->
        </div> <!--#container-->
    </div> <!--#wrap-->
    <script src="../resources/js/login.js"></script>
</body>
</html>