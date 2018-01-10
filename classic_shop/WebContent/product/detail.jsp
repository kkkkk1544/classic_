<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<script>

$(function(){
	console.log(${productDetail});
	$.ajax({
		
	
		
		
	});//ajax
});//ready
</script>
<div class="product_body">
	
	<p class="-detail-spec-description displaynone">
		<input id="productNum" desc="상품번호" type="text" value="">
		<input id="productName" desc="상품이름" type="text" value="">
		<input id="productPrice" desc="상품가격" type="text" value="">
		<input id="productMileage" desc="상품마일리지" type="text" value="">
		<input id="productColor" desc="상품색상" type="text" value="">
		<input id="productSize" desc="상품사이즈" type="text" value="">
	</p>
	<div id="productTitle">
		<h2>Outer List <!--Custom content--></h2>
	  <p><!--With a bit of extra markup, it's possible to add any kind of HTML content like headings, paragraphs, or buttons into thumbnails.-->
	  	<a href="#" class="cate">코트</a>
	  	<a href="#" class="cate">자켓</a>
	  	<a href="#" class="cate">점퍼</a> 
	  	<a href="#" class="cate">가디건</a> 
	  </p>
	</div>
	
	<div class="container">
	<div class="detail_top">
		<div class="col-md-6">
		<div class="detail_top_left">
			<img src="//withyoon.com/web/product/big/201801/7283_shop1_257605.jpg" class="img-responsive"/>
		</div>
		</div>
		<div class="col-md-6">
		<div class="detail_top_right">
			<div class="detail_top_right_top">
			<hr class="detail_hr">
			<h3><%-- ${productDetail.name} --%><%-- <c:forEach var="detail" items="${productDetail}">${detail.name}</c:forEach> --%></h3>
			<p class="detail_top_right_description_one"><%-- ${productDetail.main_info} --%></p><!-- product description Line1 -->
			<p class="detail_top_right_description_two"><%-- ${productDetail.sub_info} --%></p><!-- product description Line2 -->
			</div>
			<div class="detail_top_right_middle">
			<table>
				<tr>
					<th>Price</th>
					<td><%-- ${productDetail.price} --%></td>
				</tr>
				<tr>
					<th>마일리지</th>
					<td><%-- ${productDetail.price*0.01}원(1%) --%></td>
				</tr>
			</table>
			</div>
			
			<hr class="detail_hr">
			<div class="detail_top_right_bottom">
				<table>
					<tr>
						<th>Color</th>
						<td style="text-align: 'right';" class="text-left">
							<span style="display: inline-block; width:10px; height:10px; background-color:red;"></span> 
							<span style="display: inline-block; width:10px; height:10px; background-color:blue;"></span>

					    </td>
					</tr>
					<tr>
						<th>Size</th>
						<td><select><%-- ${productDetail.sizu} --%></select></td>
					</tr>
				</table>
				<hr>
				<p>최소주문수량 1개</p>
				<table>
					<tr>
						<th>Product Name{Color,Size}</th>
						<td>
						
<!-- <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" />  -->
								<button class="bt_down">-</button>
	                  			<input type="text" size="3" name="num" value="1" id="" class="num"/>	               
								<button class="bt_up">+</button>
<!-- <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" /> -->
                 		
						<script>
						/* $(function(){ 
							  $('.bt_up').click(function(){ 
							    var n = $('.bt_up').index(this);
							    var num = $(".num:eq("+n+")").val();
							    num = $(".num:eq("+n+")").val(num*1+1); 
							  });
							  $('.bt_down').click(function(){ 
							    var n = $('.bt_down').index(this);
							    var num = $(".num:eq("+n+")").val();
							    num = $(".num:eq("+n+")").val(num*1-1); 
							  });
						})  */
						</script>
						</td>
						<td>100,000원</td>
					</tr>
				</table>
	
			</div>
			
		</div>
		</div>
	</div>
	</div>
	<div class="product_slide">
	<!-- http://www.blueb.co.kr/?r=home&c=1/5&uid=3826&mod=preview&iframe=Y 
		http://www.blueb.co.kr/?c=1/5&uid=3826
		https://www.w3schools.com/w3css/tryit.asp?filename=tryw3css_slideshow_dots2
	
	
	active 활용해서 !!!!!!! -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
	<!-- 페이지 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!-- 페이지 -->

	<div class="carousel-inner"> <!-- 카로셀 -->
		<!-- 슬라이드1 -->
		<div class="item active"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 1</h1>
					<p>텍스트 1</p>
				</div>
			</div>
		</div><!-- 
		슬라이드1 -->

		<!-- 슬라이드2 -->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" style="width:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 2</h1>
					<p>텍스트 2</p>
				</div>
			</div>
		</div>
	<!-- 	슬라이드2 -->
		
		<!-- 슬라이드3 -->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" style="width:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 3</h1>
					<p>텍스트 3</p>
				</div>
			</div>
		</div>
		<!-- 슬라이드3 -->
	</div>
	
	<!-- 이전, 다음 버튼 -->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
	</div>
	</div> <!-- 이미지슬라이드  -->
	
	<h6 id="product_qna"></h6>
	<div id="sidebox" class="bs-example">
<!-- 	<div id="message" class="bs-example" data-example-id="simple-nav-tabs"> -->
	    <ul class="nav nav-tabs">
	      <li role="presentation" class="active"><a href="javascript:productDetailInfo()">DETAIL INFO</a></li>
	      <li role="presentation"><a href="javascript:shopGuide()">SHOP GUIDE</a></li>
	      <li role="presentation"><a href="javascript:productReview()">REVIEW</a></li>
	      <li role="presentation"><a href="javascript:productQna()">QNA</a></li>
	    </ul>
 	</div>
 	<script>
 		//https://developer.mozilla.org/en-US/Add-ons/WebExtensions/API/tabs/move
 		var currentPosition = parseInt($("#sidebox").css("top"));
 		$(window).scroll(function() { var position = $(window).scrollTop();
		$("#sidebox").stop().animate({"top":position+currentPosition+"px"},100); });
 	</script>
	<div class="highlight"><pre><code id="productDetailTest" class="language-html" data-lang="html">초기내용
	</code></pre></div>
<script>
//$(function(){
	var productDetailInfo=function(){
		$.ajax({
			url:"#",
			dataType:"html",
			type: "GET",
			success: function(respData, status, jqXHR){
				$(".language-html").html("안녕안녕 여기는 detail info.");
			}
		});
	};
	var shopGuide=function(){
		$.ajax({
			url:"#",
			dataType:"html",
			type: "GET",
			success: function(respData, status, jqXHR){
				$(".language-html").html("헬로우 이곳은 샵가이드얌.");
			}
		});
	};
	var productReview=function(){
		$.ajax({
			url:"#",
			dataType:"html",
			type: "GET",
			success: function(respData, status, jqXHR){
				$(".language-html").html("요기는 프로덕트 리뷰~~~~예에에에~~~.");
			}
		});
	};
	var productQna=function(){
		$.ajax({
			url:"#",
			dataType:"html",
			type: "GET",
			success: function(respData, status, jqXHR){
				$(".language-html").html("프롸덕 큐앤에이");
			}
		});
	};
//});

	

</script>

<a class="back-to-top" href="#top">
	<button>Top</button>
</a>
<!-- https://stackoverflow.com/questions/18023278/what-is-top-and-how-can-i-use-it-on-my-site
	id로 이름을 지어놓고 a href=#id 로 이동할 수 있음
 -->
	
</div>