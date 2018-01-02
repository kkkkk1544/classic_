<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 이미지 슬라이드 CSS -->
<style>
	/* Make the image fully responsive */
	.carousel-inner img {
	    width: 100%;
	    height: 15%;
	}
</style>
<!-- 이미지 슬라이드 -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img class="d-block w-100" src="<c:url value='/public/img/test.jpg'/>" alt="First slide">
		</div>
		<div class="carousel-item">
			<img class="d-block w-100" src="<c:url value='/public/img/test.jpg'/>" alt="Second slide">
		</div>
		<div class="carousel-item">
			<img class="d-block w-100" src="<c:url value='/public/img/test.jpg'/>" alt="Third slide">
		</div>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- 상품 진열 -->
<div class="container">
	<!-- NEW ITEMS -->
	<p class="main_title">NEW ITEMS</p>
		<div class="main_body">
		</div>
	<!-- BEST ITEMS -->
	<p class="main_title">BEST ITEMS</p>
		<div class="main_body">
		</div>
</div>

<!-- 팝업창 -->
<script>
	var popupBanner = window.open("banner/openPop.html","_blank","top=100 left=200 width=400 height=400");
</script>

<!-- 
	안 한 거
		1. 메인 이미지 슬라이드
		2. 새 창 디자인(비밀번호 입력)
		3. 네비게이션 三
		4. 자물쇠, 카메라, +, - 아이콘 추가
		5. 버튼 위치 마무리
		6. 이메일 인증 api
 -->