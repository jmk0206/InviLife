<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<%@ include file="../invi/header.jsp" %>
		<div id="container">
			<h2 class="boardFAQ">
				FAQ<br>
				<span class="titleFAQ">언제나 고객의 목소리에 귀를 기울이겠습니다.</span>
			</h2>
			<table class="table table-bordered" id="dataTable">
				<thead>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일자</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="board">
						<tr>
							<td>${board.bno }</td>
							<td><a href="get?bno=${board.bno }">${board.title }[ ${board.replycnt } ]</a></td>
							<td>${board.writer }</td>
							<td>${board.regdate }</td>
						</tr>
					</c:forEach>
				</tbody>
				<tr>
					<td colspan="4" class="registerBtn">
						<button type="button" onClick="location.href='register'">글쓰기</button>
					</td>
				</tr>
			</table>
		
			<div class="search">
				<form action="list" method="get">
					<!-- 페이징이 깨지기 때문에 아래의 input태그를 사용하며 hidden을 한다. -->
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name=amount value="${pageMaker.cri.amount}">
					<select name="type">
						<option value="">--</option>
						<option value="TC">제목 or 내용</option>
						<option value="TW">제목 or 작성자</option>
						<option value="CW">내용 or 작성자</option>
						<option value="TCW">제목 or 내용 or 작성자</option>
					</select>
					<input type="text" name="keyword">
					<input type="submit" value="검색">
				</form>
			</div>
		</div> <!-- #container -->
		<%@ include file="../invi/footer.jsp" %>