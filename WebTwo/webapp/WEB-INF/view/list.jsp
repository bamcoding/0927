<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/WebTwo/css/web.css">
<title>A Web Page</title>
</head>
<body>
	<h1>Site Title</h1><hr/>
	<div class="one">
	<table id="table">
		<tr class="gray">
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>추천수</th>
		</tr>
		<c:forEach items="${vos }" var="vos">
		<tr class="row">
			<td><p style="margin:10px;">${vos.id}</td>
			<td><a href="./detail?id=${vos.id}">${vos.subject}</a></td>
			<td>${vos.author}</td>
			<td>${vos.date}</td>
			<td>${vos.hitCount}</td>
			<td>${vos.likeCount}</td>
		</tr>
		</c:forEach>
	</table>
	<div>
	<form>
		<div style="position:absolute;  left:19px;margin:10px;"><a class="block" href="./write">글쓰기</a></div>
			<div  style="position:absolute; right:19px;margin:10px;">
			<select class="block">
				<option>제목+내용</option>
				<option>제목</option>
				<option>내용</option>
				<option>작성자</option>
			</select> <input class="block" style="" type="text" placeholder="검색어" /> 
			<input class="block" type="button" value="검색" />
		</div>
		</form>
	</div>
	</div>
	<br/>
	<hr />
</body>
</html>