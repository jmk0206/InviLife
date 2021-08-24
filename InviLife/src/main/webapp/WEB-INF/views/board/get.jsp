<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jquery 연결 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- 댓글처리하기 위한 javascript(reply.js) 파일 연결 -->
<script src="../resources/js/reply.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table border="1">
			<tr>
				<td>번호</td>
				<td>${board.bno }<input type="hidden" name="bno" value="${board.bno}"></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td>${board.title}</td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea rows="3" cols="30" name="content" readonly>${board.content }</textarea></td>
			</tr>
			
			<tr>
				<td>작성자</td>
				<td>${board.writer }</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="button" onClick="location.href='modify?bno=${board.bno }'">수정</button>
					<input type="submit" value="삭제" formaction="remove">
					<button type="button" onClick="location.href='list'">목록</button>
				</td>
			</tr>

		</table>
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
</body>
</html>