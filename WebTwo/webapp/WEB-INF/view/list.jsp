<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A Web Page</title>
</head>
<body>
	<h1>Site Title</h1><hr/>
	<table border=1>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>추천수</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<form>
	<div>
		<a class="block" href="www.naver.com">글쓰기</a>
			<select class="block">
				<option>제목+내용</option>
				<option>제목</option>
				<option>내용</option>
				<option>작성자</option>
			</select> <input class="block" type="text" placeholder="검색어" /> <input
				class="block" type="button" value="검색" />
		</form>
	</div>
	<hr />
</body>
</html>