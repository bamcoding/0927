<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/WebTwo/css/web.css" >
<title>A Web Page</title>
</head>
<body>
	<div class="group">
		<form>
			<div>
				<input id="id" name="id" type="text" placeholder="Email or ID" />
			</div>
			<div>
				<input id="username" name="username" type="text"
					placeholder="Username" />
			</div>
			<div>
				<input id="password" name="password" type="text"
					placeholder="Password" />
			</div>
			<div>
				<input id="passwordConfirm" name="passwordConfirm" type="text"
					placeholder="Password Confirm" />
			</div>
			
				<input type="button" id="join" value="Join" onclick="location.href='./signIn'"/>
				<input type="button" style="position:absolute; right:0px;" id="cancel" value="Cancel"/>
			
		</form>
	</div>
</body>
</html>