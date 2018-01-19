<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 lib -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value='/public/bootstrap/css/bootstrap.css' />">
<!-- Google Login -->
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="785211237752-m7ipg6nvj45vdhjoc3i2di29u5g4m4qj.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<!-- awesome Icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 개인 lib -->
<link rel="stylesheet" href="<c:url value='/public/css/common.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/comu.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/product.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/member.css' />">
<link rel="stylesheet" href="<c:url value='/public/css/order.css' />">
<!-- jQuery ui CSS -->
<link rel="stylesheet" href="<c:url value='/public/js/jquery-ui/jquery-ui.min.css' />">
<!-- jQuery lib -->
<script src='<c:url value="/public/js/jquery/jquery-3.2.1.min.js"/>'></script>
<script src='<c:url value="/public/js/jquery-ui/jquery-ui.min.js"/>'></script>
<!-- kakao 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9634cbc392b8b80779d4f419ee72bf3a"></script>
<title>CLASSIC</title>
</head>
<body>
<script>
	if("${msg}"!=""){
		alert("${msg}");	
	}
</script>
<c:remove var="msg"/>
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
							<!--로그인 -->
							<c:choose>
								<c:when test="${loginMem ne null}">
										<c:if test="${loginMem.grade==0}">
											<li><a href="#"><strong style="color: navy;">관리자 페이지 이동</strong></a></li>
										</c:if>
									<li><a><strong style="color: #000;">${loginMem.id} 님 접속</strong></a></li>
									<li><a href="<c:url value='/logout.do' />">LOGOUT</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="<c:url value='/login.do' />">LOGIN</a></li>
									<li>
										<a href="<c:url value='/signup.do' />">JOIN US</a>
									</li>
								</c:otherwise>
							</c:choose>
<!-- 임시 필터 설정 -->
<!-- 회원인 경우 해당 페이지로 바로 넘어감. 비회원인 경우 로그인 페이지로 감 -->
						<c:choose>
							<c:when test="${loginMem ne null}">
								<li role="presentation" class="dropdown">
									<a class="dropdown-toggle" href="<c:url value='/member/mypage/detail.jsp'/>" role="button" aria-expanded="false">MY PAGE</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="<c:url value='/member/mypage/modify.jsp'/>">회원정보수정</a></li>
										<li><a href="<c:url value='/member/mypage/address.jsp'/>">배송주소록</a></li>
										<li><a href="<c:url value='/member/mypage/mileage.jsp'/>">적립금</a></li>
										<li><a href="<c:url value='/member/mypage/coupon.jsp'/>">쿠폰</a></li>
										<li><a href="<c:url value='/order/cart/cart.jsp'/>">장바구니</a></li>
										<li><a href="<c:url value='/order/wishlist.do?num=22'/>">위시리스트</a></li>
										<li><a href="#">주문내역</a></li>
										<li><a href="<c:url value='/member/mypage/myposting.jsp'/>">내가쓴글</a></li>
									</ul>
								</li>
								<li>
									<a href="<c:url value='/order/cart/cart.jsp'/>">CART
										<span class="badge badge-pill badge-secondary" style="background-color: #ccc;">0</span>
									</a>
								</li>
								<li><a href="<c:url value='/order/list.jsp' />">ORDER</a></li>
							</c:when>
							<c:otherwise>
								<li role="presentation" class="dropdown">
									<a class="dropdown-toggle" href="<c:url value='/login.do' />" role="button" aria-expanded="false">MY PAGE</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="<c:url value='/login.do' />">회원정보수정</a></li>
										<li><a href="<c:url value='/login.do' />">배송주소록</a></li>
										<li><a href="<c:url value='/login.do' />">적립금</a></li>
										<li><a href="<c:url value='/login.do' />">쿠폰</a></li>
										<li><a href="<c:url value='/login.do' />">장바구니</a></li>
										<li><a href="<c:url value='/login.do' />">위시리스트</a></li>
										<li><a href="<c:url value='/login.do' />">주문내역</a></li>
										<li><a href="<c:url value='/login.do' />">내가쓴글</a></li>
									</ul>
								</li>
								<li>
									<a href="<c:url value='/login.do' />">CART
										<span class="badge badge-pill badge-secondary" style="background-color: #ccc;">0</span>
									</a>
								</li>
								<li><a href="<c:url value='/login.do' />">ORDER</a></li>
							</c:otherwise>
						</c:choose>
							<li role="presentation" class="dropdown">
									<a class="dropdown-toggle" href="<c:url value='/community/notice.do' />" role="button" aria-expanded="false">COMMUNITY</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="<c:url value='/community/notice.do' />">NOTICE</a></li>
										<li><a href="<c:url value='/community/qna.do' />">QNA</a></li>
										<li><a href="<c:url value='/community/faq.do' />">FAQ</a></li>
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