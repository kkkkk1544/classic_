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
<nav id="adminTopNav">
	<div class="container">
		<div class="row admin-top-title"><h2>CLASSIC ADMIN</h2></div>
		<div class="row admin-top-menu">
			<ul class="nav nav-pills">
				<li class="nav-item"><a class="nav-link" href="#">기본 설정</a></li>
				<li class="nav-item"><a class="nav-link" href="#">회원</a></li>
				<li class="nav-item"><a class="nav-link" href="#">상품</a></li>
				<li class="nav-item"><a class="nav-link" href="#">주문</a></li>
				<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="#">배너</a></li>
				<li class="nav-item"><a class="nav-link" href="#">통계</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- 관리자 좌측 메뉴 -->
<nav id="adminLeftNav">
	<div class="container">
	</div>
</nav>