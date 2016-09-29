<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/WebTwo/css/web.css">
<title>A Web Page</title>
</head>
<body>
<h1>Site Title</h1>
<hr/>
<div class="one">
<form>
<div>
<input style="width:100%" type="text" name="subject" placeholder="제목을 입력하세요."/><br/>
</div>
<div style="margin-top:5px;margin-bottom:5px;">
<textarea style="width:100%; height:300px" name="content" placeholder="내용을 입력하세요."></textarea>
</div>
<div>
<div class="block" >
<input style="width:50%;" type="text" placeholder="파일을 선택하세요."/>
<input type="file" value="파일 선택"/></div>
<div class="block" style="position:absolute; right:23px;">
<input type="button" value="뒤로가기" onclick="location.href='./list'"/>
<input type="button" value="글쓰기" onclick="location.href='./list'"/></div>
</div>
</form>
</div>
<hr/>
</body>
</html>