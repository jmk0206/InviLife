<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>INVICOFFEE Membership</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="../resources/css/membership.css">
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
            <div id="container_in">
                <form method="POST" action="membership">
                    <div class="row_group">
                        <div class="join_row">
                            <h3 class="join_title">
                                <label for="join_id">아이디</label>
                            </h3> <!--.join_title-->

                            <div class="join_box">
                                <input type="text" id="join_id" name="join_id" required autofocus>
                                <span class="url_step">@invi.com</span> <!--.url_step-->
                            </div> <!--.join_box-->
                            <p id="checkId"></p>
                        </div> <!--.join_row-->

                        <div class="join_row">
                            <h3 class="join_title">
                                <label for="join_pw1">비밀번호</label>
                            </h3> <!--.join_title-->
                            <div class="join_box">
                                <input type="password" id="join_pw1" name="join_pw1" required>
                            </div> <!--.join_box-->
                            <p id="checkPw1"></p>

                            <h3 class="join_title">
                                <label for="join_pw2">비밀번호 확인</label>
                            </h3> <!--.join_title-->
                            <div class="join_box">
                                <input type="password" id="join_pw2" name="join_pw2" required>
                            </div> <!--.join_box-->
                            <p id="checkPw2"></p>
                        </div> <!--.join_row-->
                    </div> <!--.row_group-->

                    <div class="row_group">
                        <h3 class="join_title">
                            <label for="join_name">이름</label>
                        </h3> <!--.join_title-->
                        <div class="join_box joinBox4">
                            <input type="text" id="join_name" name="join_name" required>
                        </div> <!--.join_box-->
                        <p id="checkName"></p>

                        <div id="birth">
                            <h3 class="join_title">
                                <label>생년월일</label>
                            </h3> <!--.join_title-->
                            <ul id="birth_select">
                                <li class="year"><input type="text" id="birth_year" name="birth_year" placeholder="년(4자)" required></li> <!--.year-->
                                <li class="month">                     
                                    <select id="birth_month" name="birth_month">
                                        <option value="">월</option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </li> <!--.month-->
                                <li class="day"><input type="text" id="birth_day" name="birth_day" placeholder="일" required></li> <!--.day-->
                            </ul>
                            <p id="checkBirth"></p>

                            <div id="join_gender">
                                <h3 class="join_title">
                                    <label>성별</label>
                                </h3> <!--.join_title-->
                                <div class="gender_select">
                                    <select id="gender" name="gender">
                                        <option value="">성별</option>
                                        <option value="남">남</option>
                                        <option value="여">여</option>
                                        <option value="선택안함">선택안함</option>
                                    </select> <!--#gender-->
                                </div> <!--.gender_select-->
                            </div> <!--.join_gender-->
                            <p id="checkGender"></p>
                        </div> <!--.birth-->
                        
                        <!-- button에서 input으로 수정 -->
                        <input type="submit" id="join_button" value="가입하기">
                    </div> <!--.row_group-->
                </form> <!--#join_form-->
            </div> <!--#container_in-->
        </div> <!--#container-->
	</div> <!-- #wrap -->
        <script src="../resources/js/membership.js"></script>
</body>
</html>