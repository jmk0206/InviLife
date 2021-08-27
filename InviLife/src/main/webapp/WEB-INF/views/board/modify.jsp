<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
<title>modify</title>
<link rel="stylesheet" href="../resources/css/modify.css">
</head>
<body>
	<div id="wrap">
		<div class="container">
			<div class="formBoard">
				<form action="modify" method="post">
					<div class="number box">
						<span class="boxTitle">글 번호</span>
						<span class="gNumber">${board.bno }<input type="hidden" id="bno" name="bno" value="${board.bno}"></span>
					</div>

	
					<div class="title box">
						<h2 class="h2Title"><input type="text" name="title" value="${board.title}"></h2>
					</div>
	
					<div class="contents box">
						<span class="boxTitle">내용</span>
						<textarea rows="30" cols="100" class="c_textarea" name="content">${board.content }</textarea>
					</div>
						
					<div class="writer box">
						<span class="boxTitle">작성자</span>
						<span class="gWriter">${board.writer }</span>
					</div>
					
					<div class="moveBtn">
						<ul>
							<li><input type="submit" value="수정"></li>
							<li><button type="button" onClick="history.go(-1)">취소</button></li>
						</ul>
					</div> <!-- .moveBtn -->
				</form>
			</div> <!-- .formBoard -->
		</div> <!-- .container -->
	</div> <!-- #wrap -->
</body>
</html>