<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/WebTwo/css/web.css">
<script type="text/javascript" src="/WebTwo/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready( function(){
		$("#delbtn").click(function(){
			var yes = confirm("${vo.subject}를 삭제하겠습니까?");
			if(yes){
			location.replace('./list');
				//$("#delbtn").attr("href", "./list");
			}
		});
	});
</script>
<title>A Web Page</title>
</head>
<body>
<h1>Site Title</h1>
<hr/>
<div style="font-size: 20px;font-weight: bold">${vo.subject }</div>

<div class="block" style="margin-right:20px">${vo.author }</div>
<div class="block" style="margin-right:20px">${vo.date }</div><div class="block">
<img src="/WebTwo/img/hit.jpg"/> ${vo.hitCount } 
<img src="/WebTwo/img/like.jpg"/>${vo.likeCount }</div>
<div><img src="/WebTwo/img/file.jpg"/>첨부파일.exe</div>
<div style="height:200px">${vo.content }</div>
<form>
<a id="delbtn">삭제</a>&nbsp;&nbsp;
<a href="./modify?id=${vo.id }">수정</a>&nbsp;&nbsp;
<a href="./list">목록보기</a>
</form>
<hr/>
</body>
</html>