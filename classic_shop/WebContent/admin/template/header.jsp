<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩4 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href='<c:url value="/public/bootstrap-4.0.0/css/bootstrap.min.css"/>' >
<link rel="stylesheet" href='<c:url value="/public/js/jquery-ui/jquery-ui.min.css"/>' >
<!-- awesome Icon -->
<link rel="stylesheet" href='<c:url value="/public/css/font-awesome-4.7.0/css/font-awesome.min.css"/>' >
<!-- 개인 lib -->
<!-- jQuery-ui 설정 -->
<script src='<c:url value="/public/js/jquery-ui/jquery-ui.min.js"/>' ></script>
<!--jQuery 설정 -->
<script src='<c:url value="/public/js/jquery/jquery-3.2.1.min.js"/>' ></script>
<script src='<c:url value="/public/bootstrap-4.0.0/js/bootstrap.min.js"/>' ></script>
<title>CLASSIC ADMIN</title>
<!-- 관리자 상단 메뉴  -->
<div class="navbar navbar-expand navbar-dark bg-dark admin-top-title">
	<h2>
		<a href="#">CLASSIC ADMIN</a>
	</h2>
	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="<c:url value='/main.do'/>">내 쇼핑몰</a></li>
			<li class="nav-item"><a class="nav-link" href="<c:url value='/main.do'/>">아이디+님 로그인(관리자)</a></li>
			<li class="nav-item"><a class="nav-link" href="<c:url value='/main.do'/>">LOGIN</a></li>
			<li class="nav-item"><a class="nav-link" href="<c:url value='/main.do'/>">LOGOUT</a></li>
		</ul>
	</div>
</div>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="#">기본 설정</a></li><!-- 쿠폰 -->
			<li class="nav-item"><a class="nav-link" href="#">회원</a></li><!-- 회원리스트, 관리자리스트 등 회원관련 -->
			<li class="nav-item"><a class="nav-link" href="#">상품</a></li>
			<li class="nav-item"><a class="nav-link" href="#">주문</a></li>
			<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
			<li class="nav-item"><a class="nav-link" href="#">배너</a></li>
			<li class="nav-item"><a class="nav-link" href="#">통계</a></li><!-- 상품,주문 -->
		</ul>
	</div>
</nav>


