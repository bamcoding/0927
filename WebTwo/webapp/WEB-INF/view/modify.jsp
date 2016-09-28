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
<div class="one">
<form>
<div>
<input style="width:100%" type="text" name="subject" value="${vo.subject }"/><br/>
</div>
<div style="margin-top:5px;margin-bottom:5px;">
<textarea style="width:100%; height:300px" name="content" ">${vo.content }</textarea>
</div>
<div><input type="checkbox"/>
<img src="/WebTwo/img/file.jpg"/>
첨부파일.exe</div>
<div>
<div class="block" >
<input style="width:50%;" type="text" placeholder="파일을 선택하세요."/>
<input type="button" value="파일 선택"/></div>
<div class="block" style="position:absolute; right:23px;">
<input type="button" value="뒤로가기" onclick="location.href='./list'"/>
<input type="button" value="글쓰기" onclick="location.href='./list'"/></div>
</div>
</form>
</div>
</body>
</html>