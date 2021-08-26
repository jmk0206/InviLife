<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jquery 연결 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 댓글처리하기 위한 javascript(reply.js) 파일 연결 -->
<script src="../resources/js/reply.js"></script>
<link rel="stylesheet" href="../resources/css/get.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<form method="post">
				<div class="number box">
					<span class="boxTitle">글 번호</span>
					<span class="gNumber">${board.bno }<input type="hidden" id="bno" name="bno" value="${board.bno}"></span>
				</div>
				
				<div class="title box">
					<span class="boxTitle">제목</span>
					<h2>${board.title}</h2>
				</div>
				
				<div class="contents box">
					<span class="boxTitle">내용</span>
					<textarea rows="30" cols="100" class="c_textarea" name="content" readonly>${board.content }</textarea>
				</div>
				
				<div class="writer box">
					<span class="boxTitle">작성자</span>
					<span class="gWriter">${board.writer }</span>
				</div>
				
				<div class="goOther">
					<ul>
						<li><button type="button" onClick="location.href='modify?bno=${board.bno }'">수정</button></li>
						<li><input type="submit" value="삭제" formaction="remove"></li>
						<li><button type="button" onClick="location.href='list'">목록</button></li>
					</ul>
				</div>
			</form>
			
			<!-- 목록 리스트 뿌리기 -->
			<div>
				<ul id="replyList">
			
				</ul>
			</div>
			
			<div>
				<textarea rows="3" cols="30" id="reply"></textarea>
				<button id="replyadd">댓글</button>
			</div>
		</div> <!-- .container -->
	</div> <!-- #wrap -->
</body>
</html>