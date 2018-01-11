<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/product.css' />">
</head>
<body>
<div class="product_body container">
<div id="productTitle">
	<h2>Outer List <!--Custom content--></h2>
  <p><!--With a bit of extra markup, it's possible to add any kind of HTML content like headings, paragraphs, or buttons into thumbnails.-->
  	<a href="#" class="cate" style="text-align: right">코트</a>
  	<a href="#" class="cate">자켓</a>
  	<a href="#" class="cate">점퍼</a> 
  	<a href="#" class="cate">가디건</a> 
  </p>
</div>
 
<div class="product_list" data-example-id="thumbnails-with-custom-content">
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			<a href="<c:url value='/product/detail.do?num=1' />">
			<img data-src="holder.js/100%x200" alt="400x400" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDMxOSAyMDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxkZWZzLz48cmVjdCB3aWR0aD0iMzE5IiBoZWlnaHQ9IjIwMCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjEyMC41NzAzMTI1IiB5PSIxMDAiIHN0eWxlPSJmaWxsOiNBQUFBQUE7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6MTVwdDtkb21pbmFudC1iYXNlbGluZTpjZW50cmFsIj4zMTl4MjAwPC90ZXh0PjwvZz48L3N2Zz4=" data-holder-rendered="true" style="height: 400px; width: 400px; display: block;">
			</a>
			
				<div class="product_caption">
				  <p class="product_name">
				  <a href="<c:url value='/product/detail.jsp' />">ProductName
				   <!-- 컬러칩 html으로 사각형 그려서 거기다 span 먹이는 거~ -->
		          
		          
		          </a></p>
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
		 
	</div><!-- row -->
    
</div>
<script>
$(function(){
	
	$.ajax({
		url:"<c:url value='list.do'/>",
		type:"GET",
		dataType:"json",
		success:function(data){
			console.log(data);
			var contents="";
			$(data).each(function(index, item){
				var thum
				$(".row").append(function(){
					var thum="";
					thum+="<div class='col-sm-6 col-md-4 border-0 border-white'>";
					thum+="<div class='thumbnail'>";
					thum+="<a href=\"<c:url value='/product/detail.do?num="+item.num+"'/>\"";
					thum+="<img data-src='' data-holder-rendered='true' style='height: 400px; width: 400px; display: block;'></a>";
					thum+="<div class='product_caption'>";
					/*  */
					thum+="<a href=\"<c:url value='/product/detail.do?num="+item.num+"'/>\"";
					thum+="<span>"+item.name+"</span></a>";
					thum+="<span style='display: inline-block; width:10px; height:10px; background-color:red;'></span> <span style='display: inline-block; width:10px; height:10px; background-color:blue;'></span>";
				
/* 					thum+="<p class='product_name'>"+item.name;
					thum+="<span style='display: inline-block; width:10px; height:10px; background-color:red;'></span> <span style='display: inline-block; width:10px; height:10px; background-color:blue;'></span></p>"; */
					
					thum+="<hr><p class='product_price'>"+item.price+"</p>"
					thum+="<p class='product_description'>"+item.sub_info+"</p></div></div></div>"
				
					return thum;
					});	//html		
			});//each		
		}//success	
	});//ajax
	



});//ready
</script>
  
  <!-- /.bs-example -->
  
   <div class="bs-example" data-example-id="disabled-active-pagination">
    <nav>
      <ul class="pagination">
        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
     </ul>
   </nav>
  </div>
	
</div>
</div>