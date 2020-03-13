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
		
		var windowHeight = $(window).height();
		var wrapperHeight = $("#wrapper").height();
		var middlePosition = (windowHeight / 2) - (wrapperHeight / 2);
		
		$("#wrapper").css({
			"position": "relative"
			, "top": middlePosition+ "px"
		});
	});
</script>
</head>
<body>
	<div id="wrapper">
		<form id="loginForm">
			<input type="text" id="userEmail" name="userEmail" placeholder="Email or ID" /><br/>
			<input type="password" id="userPassword" name="userPassword" placeholder="Password" /><br/>
			<div style="margin-top: 5px;">
				<div class="left">
					<input type="button" id="signInBtn" value="Sign In" />
				</div>
				<div class="right">
					<input type="button" id="cancelBtn" value="Cancel" />
				</div>
				<div class="clear"></div>
			</div>
		</form>
	</div>
</body>
</html>