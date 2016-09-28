<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A Web Page</title>
</head>
<body>
<h1>Site Title</h1>
<hr/>
<form>
<div><input type="text" name="subject" placeholder="제목을 입력하세요."/>
</div><div><textarea  name="content" placeholder="내용을 입력하세요."></textarea>
</div><div><input type="checkbox"/>
<img src="/WebTwo/img/file.jpg"/>
첨부파일.exe</div>
<div>
<input type="text" placeholder="파일을 선택하세요."/>
<input type="button" value="파일 선택"/>
<input type="button" value="뒤로가기"/>
<input type="button" value="글쓰기"/>
</div>
</form>
<hr/>
</body>
</html>