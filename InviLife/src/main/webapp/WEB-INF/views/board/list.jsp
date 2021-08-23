<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일자</td>
		</tr>
		<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.bno }</td>
			<td><a href="get?bno=${board.bno }">${board.title }</a></td>
			<td>${board.writer }</td>
			<td>${board.regdate }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
				<button type="button" onClick="location.href='register'">글쓰기</button>
			</td>
		</tr>
	</table>
</body>
</html>