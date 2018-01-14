<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/product.css' />">
<script src="<c:url value='/public/js/banner.js'/>"></script>
</head>
<body>
<!-- 이미지 슬라이드 -->
<div class="product_slide">
	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
<!-- 페이지 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<!-- 슬라이드1 -->
			<div class="item active main-img" style="width: 100%; height: 800px"> 
				<img src="<c:url value='/public/img/001.jpeg'/>" alt="First slide" style="height: 100%; width: 100%">
			</div>
			<!-- 슬라이드2 -->
			<div class="item" style="width: 100%; height: 800px"> 
				<img src="<c:url value='/public/img/003.jpg'/>" data-src="" alt="Second slide" style="height: 100%; width: 100%">
			</div>
			<!-- 슬라이드3 -->
			<div class="item" style="width: 100%; height: 800px"> 
				<img src="<c:url value='/public/img/002.png'/>" data-src="" alt="Third slide"  style="height: 100%; width: 100%">
			</div>
		</div>
		<!-- 이전, 다음 버튼 -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
	</div>
</div> 
<!-- 상품 진열 -->
<div class="container">
	<!-- NEW ITEMS -->
	<p class="main_title">NEW ITEMS</p>
		<div class="main_body">
			<div class="row">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
				 <div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
				 <div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
			</div>		
		</div>
	<!-- BEST ITEMS -->
	<p class="main_title">BEST ITEMS</p>
		<div class="main_body">
			<div class="row">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
				 <div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
				 <div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<a href="<c:url value='/product/detail.jsp' />">
							<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
						</a>
						<div class="product_caption">
							<p class="product_name">
								<a href="<c:url value='/product/detail.jsp' />">ProductName</a>
							</p>
							<p class="product_colorchip">
								<button type="button" class="colorbtn"></button>
								<button type="button" class="colorbtn2"></button>
							</p>
							<hr>
							<p class="product_price">Product Price</p>
							<p class="product_description">Product Description Line1</p>
						</div>
					 </div>
				 </div>
			</div>		
		</div>
</div>
<script>
	window.open('/classic_shop/view/banner/openPop.html','_blank','top=100,left=200,width=400,height=400');
</script>
<!-- 
	안 한 거
		2. 이메일 인증 api
		3. 구글 로그인
		4. banner cookie 구현
		5. qna 유효성 검사 및 자잘한 것들
			- 내 글만 확인하기
			- 비공개글 클릭 시 비밀번호 입력창
			- 비공개글 삭제 시 비밀번호 입력창
			- 글 수정 후 해당 글로 이동하기(넘버값 어떻게?)
			- 글 등록 후 해당 글로 이동하기(넘버값 어떻게?)
			- 글 등록 시 subject, content, secure, pwdInput ajax 구현
			- 첨부파일 기능 아예 안함
			- qna reply 기능 아예 안함
		6. product search
		7. footer map
			- 지도에 아이콘 띄우기(==> modal로 구현할 것)
		8. CSS 총정리(로그인, 회원가입, 게시판)
			- 네비게이션 三
			- 반응형
			- 버튼 위치
			- 게시판 아이콘(카메라, +,-)
			- 테이블 효과 제거
			- 테이블 위치 및 여백, 출력 라인
			- 아코디언
			- 비밀번호 입력창 / 로그인 id/pw 찾기창
 -->
<!-- 
	한 거
		1. 세션 로그인
		2. 회원가입
		3. 게시판 유효성 검사/첨부파일/reply 제외한 기본적인 CRUD
		4. header/footer(회원/비회원 필터 & 지도 제외)
 -->
<!-- 
	이메일 인증 참고자료
	http://altongmon.tistory.com/308
	http://sick33.tistory.com/30
	http://hunit.tistory.com/306
	http://compunication.tistory.com/15
	https://prezi.com/ggcv6bezgvmr/mvc/
	
	로그인 SSL 인증
	RSA 암호화
	
	http://cofs.tistory.com/297
	http://vip00112.tistory.com/40
 -->

 