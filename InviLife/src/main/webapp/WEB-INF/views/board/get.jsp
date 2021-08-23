<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
</body>
</html>