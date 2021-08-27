<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="../resources/css/register.css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<div class="container">
			<div class="head">
				<h1>고객의 소리</h1>
				<p>고객의 목소리를 귀 기울여 들어 최고의 서비스를 제공하겠습니다.</p>
			</div> <!-- .head -->

			<form action="register" method="post">
				<div class="title box">
					<label>
						<span class="boxTitle">제목</span>
						<span class="inputBorder">
							<input type="text" class="inputBox" name="title">
						</span>
					</label>
				</div> <!-- .title -->
				
				<div class="contents box">
					<label for="content">
						<span class="boxTitle">내용</span>
					</label>
					<span>
						<textarea name="content" id="content" class="c_textarea" rows="13" cols="100"></textarea>
					</span>
				</div> <!-- .contents -->

				<div class="writer box">
					<label>
						<span class="boxTitle">작성자</span>						
						<span class="inputBorder writerBorder">
							<input type="text" class="inputBox" name="writer">
						</span>
					</label>
				</div> <!-- .writer -->

				<div class="goList">
					<ul>
						<li><input type="submit" value="글쓰기" class="send"></li>
						<li><button type="button" onClick="location.href='list'" class="cancel">취소</button></li>
					</ul>
				</div> <!-- .goList -->
			</form>
		</div> <!-- .container -->
	</div> <!-- #wrap -->
	<script src="../resources/js/register.js"></script>
</body>
</html>