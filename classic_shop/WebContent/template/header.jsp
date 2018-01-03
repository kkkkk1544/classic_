<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩, jQuery, CSS 설정(건들지마세요)-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/public/bootstrap/css/bootstrap.css' />">
<script src="public/js/jquery/jquery-3.2.1.min.js"></script>
<!-- 개인 스크립트 파일 -->
<link rel="stylesheet" href="<c:url value='/public/css/common.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/comu.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/product.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/member.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/order.css' />">
<title>CLASSIC</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #ffffff;">
			<div class="container">
				<!-- 상품 Nav -->
				<div id="productNav">
					<div class="nav navbar-nav navbar-left">
						<ul class="nav nav-pills">
							<li><a href="<c:url value='/index.jsp' />">CLASSIC</a></li>
							<li><a href="#">NEW</a></li>
							<li><a href="#">BEST</a></li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" href="<c:url value='/product/list.jsp' />" role="button" aria-expanded="false">OUTER</a>
								<%-- <a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/product/list/outerList.jsp' />" role="button" aria-expanded="false">OUTER</a>
								 --%>
								 <ul class="dropdown-menu" role="menu">
									<li><a href="#">COAT</a></li>
									<li><a href="#">JACKET</a></li>
									<li><a href="#">JUMPER</a></li>
									<li><a href="#">CARDIGAN</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">TOP</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">T-SHIRT</a></li>
									<li><a href="#">BLOUSE</a></li>
									<li><a href="#">KNIT</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">BOTTOM</a>
								<ul class="dropdown-menu" role="menu">
									<li role=""><a href="#">SKIRTS</a></li>
									<li><a href="#">PANTS</a></li>
									<li><a href="#">DENIM</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">SHOES&amp;BAG</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">SHOES</a></li>
									<li><a href="#">BAG</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">ACC</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">ACC</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			<!-- 회원 Nav -->
				<div id="memNav">
					<div class="nav navbar-nav navbar-right">
						<ul class="nav nav-pills">
							<li><a href="<c:url value='/member/login.jsp' />">LOGIN</a></li>
							<li><a href="<c:url value='/member/join.jsp' />">JOIN US</a></li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/member/mypage/detail.jsp'/>" role="button" aria-expanded="false">MY PAGE</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="<c:url value='/member/mypage/modify.jsp'/>">회원정보수정</a></li>
									<li><a href="<c:url value='/member/mypage/address.jsp'/>">배송주소록</a></li>
									<li><a href="<c:url value='/member/mypage/mileage.jsp'/>">적립금</a></li>
									<li><a href="<c:url value='/member/mypage/coupon.jsp'/>">쿠폰</a></li>
									<li><a href="#">장바구니</a></li>
									<li><a href="#">위시리스트</a></li>
									<li><a href="#">주문내역</a></li>
									<li><a href="#">내가쓴글</a></li>
								</ul>
							</li>
							<li><a href="#">CART</a></li>
							<li><a href="<c:url value='/order/list.jsp' />">ORDER</a></li>
							<li role="presentation" class="dropdown">
<%-- 								<a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/comu/notice/list.jsp' />"  role="button" aria-expanded="false">COMMUNITY</a>
 --%>								<a class="dropdown-toggle" href="<c:url value='/comu/notice/list.jsp' />" role="button" aria-expanded="false">COMMUNITY</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="<c:url value='/comu/notice/list.jsp' />">NOTICE</a></li>
									<li><a href="<c:url value='/comu/qna/list.jsp' />">QNA</a></li>
									<li><a href="<c:url value='/comu/faq/list.jsp' />">FAQ</a></li>
								</ul>
							</li>
							<li role="presentation" class="dropdown">
								<a class="dropdown-toggle" href="<c:url value='/product/search/searchForm.jsp' />" role="button">&#128269;</a>
								<ul class="dropdown-menu" role="menu">
									<li><input type="text" placeholder="상품명 검색" id="productSearch">
										<button id="searchBtn">&#128269;</button></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>