<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 등록하기</title>
<script type="text/javascript" src="/Article/js/jquery-3.1.1.js"></script>
<script type="text/javascript">

	$(document).ready(function (){
			$("#naverBtn").click( function () {		
				$.post("http://localhost:8080/WorkForDiv/naver", {}, function(data) {		
					alert(data);
					});
				});
		
		//alert("jQuery가 사용될 준비가 끝났습니다!");
		$("#saveBtn").click(function() {//css처럼 아이디를 이런식으로 집어넣습니다.
			var subject = $("#subject").val()
			if(subject == ""){
				alert("제목을 입력하세요!");
				return;
			}
		
			//변수에 안 넣고 비교문에 바로 넣어도 된다.
			if($("#content").val() == ""){
				alert("내용을 입력하세요!");
				return; 
			}
			
			//writeForm의 속성을 가져올 수 있다.
			$("#writeForm").attr("method", "post");
			$("#writeForm").attr("action", "/Article/doInsert");
			$("#writeForm").submit();
		});
	}); 
	
</script>
</head>
<body bgcolor=eedddd>
<h1>기사 등록하기</h1>
<form id="writeForm" name="writeForm">
 
<hr/>
<table style="border:1px solid black; border-collaps:collaps; width:400px;height:400px">
	<tr style="height: 10%;"><th>제목</th><td>
<input id="subject" name="subject" type="text" placeholder="제목을 입력해주세요." style="width:98%;">
	</td></tr>
	<tr><th>내용</th><td>
<textarea id="content" name="content" placeholder="내용을 입력해주세요." style="width:98%;height:360px;"></textarea>
</td></tr></table>

<hr/>
<input type="button" id="saveBtn" value="등록" /><!-- 고유한 아이디를 가지게 되었다. -->
<input type="button" id="naverBtn" value="네이버" />
<input type="button"  value="취소" onclick="location.href='./article'"/>
</form>
</body>
</html>