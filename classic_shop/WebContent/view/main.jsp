<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/product.css' />">
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
	function getCookie(cookieName){
		var name = cookieName+"=";
		var x = 0;
		while(x<=document.cookie.length){
			var y = (x+name.length);
			if(document.cookie.substring(x,y)==name){
				if((endName=document.cookie.indexOf(";",y))==-1) endName = document.cookie.length;
				return unescape(document.cookie.substring(y, endName));
			}
			x = document.cookie.indexOf(" ", x)+1;
			if(x==0) break;
		}
		return "";
	}
	
	if(getCookie('popup')!="off"){
		window.open('/classic_shop/event.do','_blank','top=100,left=200,width=400,height=400');
	}
</script>