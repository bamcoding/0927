<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Board/css/layout.css" />
<script type="text/javascript" src="/Board/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#deleteBtn").click(function() {
			if(confirm("\"첫 번째 게시물입니다.\"를 삭제하시겠습니까?")) {
				
			}
		});
	});
</script>
</head>
<body>
	<div id="wrapper">
		<div id="article">
			<div id="articleHeader">
				<p>첫 번째 게시글 입니다.</p>
				<div id="articleInfo">
					<span>Teahyun</span>
					<span>2016-09-28 15:34:14</span>
					<span><img src="/Board/img/eye-icon.png" />15</span>
					<span><img src="/Board/img/heart-24-128.png" />0</span>
				</div>
				<div id="attachedFile">
					<span><img src="/Board/img/text-file-3-xxl.png" /><a href="">첨부파일.exe</a></span>
				</div>
			</div>
			<hr/>
			<div id="articleBody">
				이런글 저런글..<br/>
				<br/>
				ㅎㅎ<br/>
				ㅎㅎ<br/>
				ㅎㅎ<br/>
			</div>
		</div>
		<div id="articleFooter">
			<a href="javascript:void(0);" id="deleteBtn">삭제</a>
			<a href="/Board/modify">수정</a>
			<a href="/Board/list">목록보기</a>
		</div>
	</div>
</body>
</html>