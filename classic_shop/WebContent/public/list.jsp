<%@ page pageEncoding="UTF-8"%>
<title>상품 리스트</title>
</head>
<body>
	<div class="container">
		 <h6>${goods.row_num}</h6> 
	<h1>상품 <small>리스트(${goods.row_num==11})</small></h1> 
		<div>
			<ul class="pagination">
			
			  <c:forEach begin="1" end="${goods.row_num}" var="i">
			 	 <li class="page-item <c:if test='${goods.row_num==i}'> active</c:if>">
			 	 	<a class="page-link" href="list.do?num=${i}">${i}</a>
			 	 </li>
			  </c:forEach>
			  <li class="page-item"><a class="page-link" href="list.do?num=${goods.row_num}">Next</a></li>
			</ul>
		</div>
		
		<table class="table table-sm">
			<thead>
				<tr>
					<th>row</th><th>num</th><th>name</th><th>price</th><th>state</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${goodsList}" var="goods">
					<tr>
						<td>${goods.row_num }</td>
						<td>${goods.num }</td>
						<td>${goods.name }</td>
						<td>${goods.price }</td>
						<td>${goods.state }</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	
	
	
	