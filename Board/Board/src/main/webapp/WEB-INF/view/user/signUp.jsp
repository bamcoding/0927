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
		var middlePosition = (parseInt(windowHeight) / 2) - (parseInt(wrapperHeight) / 2);
		
		$("#wrapper").css({
			"position": "relative"
			, "top": middlePosition + "px"
		});
	});
</script>
</head>
<body>

	<div id="wrapper">
		<form id="registForm">
			<input type="text" id="userEmail" name="userEmail" placeholder="Email or ID" /><br/>
			<input type="text" id="userNickname" name="userNickname" placeholder="Username" /><br/>
			<input type="password" id="userPassword1" name="userPassword1" placeholder="Password" /><br/>
			<input type="password" id="userPassword2" name="userPassword2" placeholder="Password Confirm" /><br/>
			<div style="margin-top: 5px;">
				<div class="left">
					<input type="button" id="joinBtn" value="Join" />
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