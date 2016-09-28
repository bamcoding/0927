<%@page import="net.homework1.vo.ArticleVO"%>
<%@page import="net.homework1.dao.ArticleDao"%>
<%@page import="net.homework1.dao.ArticleDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function editArtclForm() {
		
		var subject =document.getElementById("subject");
		
		if(subject==""){
			alert("제목을 입력하세요.");
			subject.focus();
			return;
		}
		
		var content =document.getElementById("content");
		
		if(content==""){
			alert("내용을 입력하세요.");
			content.focus();
			return;
		}
		
		var form = document.getElementById("editArticle");
		form.method="post";
		form.action="./doEdit?artclId=${article.articlId}";
		form.submit();
	}
</script>
<title>기사 수정하기</title>
</head>
<body bgcolor=eedddd>
	<h1>기사 수정하기</h1>
	<form id="editArticle" name="editArticle">
		<hr />
		<table
			style="width: 400px; height: 400px; border: 1px solid black; border-collaps: collaps">
			<tr style="height: 10%;">
				<th sytle="background-color:#dddddd;width:20%">제목</th>
				<td><input id="subject" name="subject" type="text"
					value="${article.subject}" style="width: 98%;" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="content" name="content" style="width: 98%; height: 360px;">${content}</textarea>
				</td>
			</tr>
		</table>
		<hr />
		<input type="button" value="수정하기" onclick="editArtclForm()"/> 
		<input type="button" value="취소" onclick="location.href='./detail?artclId=${article.articlId}'" />
	</form>
</body>
</html>