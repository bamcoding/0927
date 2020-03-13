<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 등록하기</title>
<script type="text/javascript">
	function insertFormSubmit() {
		//alert("버튼을 클릭했습니다.!");
		
		var subject = document.getElementById("subject");
		//alert(subject.value)
		
		//subject의 값이 비어있다면.
		if( subject.value == ""){
			alert("제목을 적어주세요!");
			subject.focus();
			return;
		}
		
		var content  = document.getElementById("content");
		if( content.value == ""){
			alert("내욜을 적어주세요!");
			content.focus();
			return;
		}
		alert("글쓰기 폼을 전송합니다.");
		var form = document.getElementById("insertForm")
		form.method = "post";
		form.action = "/Article/doInsert";
		form.submit();
	}
</script>
</head>
<body bgcolor=eedddd>
<h1>기사 등록하기</h1>
<form id="insertForm" name="insertForm">
 
<hr/>
<table style="border:1px solid black; border-collaps:collaps; width:400px;height:400px">
	<tr style="height: 10%;"><th>제목</th><td>
<input id="subject" name="subject" type="text" placeholder="제목을 입력해주세요." style="width:98%;">
	</td></tr>
	<tr><th>내용</th><td>
<textarea id="content" name="content" placeholder="내용을 입력해주세요." style="width:98%;height:360px;"></textarea>
</td></tr></table>

<hr/>
<input type="button" value="등록하기" onclick="insertFormSubmit()"/>
<input type="button" value="취소" onclick="location.href='./article'"/>
</form>
</body>
</html>