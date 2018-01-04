<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="member_body">
	<div class="container">
		<form name="loginForm" action="<c:url value='/login.do'/>" method="post">
			<div class="login_border">
				<h2>MEMBER LOGIN</h2>
				<div class="login_form">
					<input type="text" name="memId" placeholder="Member ID">
					<input type="password" name="memPw" placeholder="Password">
				</div>
				<p class="login_option">
					<span id="searchIdPwd"><small><a>ID/PW 찾기</a></small></span>
					<span><input type="checkbox" name="cookieLogin" value="1">Remember me</span>
				</p>
				<div class="login_btn">
					<button id="loginBtn" class="btn btn-default" type="submit">LOGIN</button>
					<button id="joinBtn" class="btn btn-default" onclick="location.href='<c:url value='/member/join.jsp'/>'">JOIN US</button>
				</div>
				<div class="login_outside">
					<button id="naver_login" class="btn btn-success">NAVER LOGIN</button>
					<button id="google_login" class="btn btn-danger">GOOGLE LOGIN</button>
				</div>
			</div>
		</form>
	</div>
</div>

<%-- <!-- 로그인 alert -->
									<script>
										if("${msg}!=''") {alert("${msg}");}
									</script>
									<c:remove var="msg" /> --%>