<%@ page pageEncoding="UTF-8"%>
<title>상품 상세</title>
</head>
<body>
	<div class="container">
		<h1>상품상세 <small>${FaqDTO.name}</small></h1>
		
		
		<!-- 선생님 스타일 버전 리스트
		아마 이걸로 하게 될것 같아요 -->
		<hr>
		<div id="accordion">
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-parent="#accordion" data-toggle="collapse" href="#reviewList">Review</a>
				</div>
				<div class="collapse show" id="reviewList">
					<div class="card-body">
						<h3>리뷰 리스트</h3>
						<ul class="list-group" id="reviews">
							<li class="list-group-item" id="reviewEx" style="display:none;" >
								<ul class="list-group">
									<li class="list-group-item stars text-warning">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
										<i class="fa fa-star-o"></i>
									</li>
									<li class="list-group-item content h5">
										상품이 좀 구려요. 그래도 배송은 빠르네요.
									</li>
									<li class="list-group-item writer h6">
										<span class="indate"></span>
										<span class="user"></span>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="card-link" data-parent="#accordion" href="#qnaList" data-toggle="collapse">질문</a>
				</div>
				<div class="collapse" id="qnaList">
					<div class="card-body">
						질문 리스트
					</div>
				</div>
			</div>
		</div>
	</div>