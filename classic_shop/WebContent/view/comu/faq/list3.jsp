<%@ page pageEncoding="UTF-8"%>
<title>상품 리스트</title>
</head>
<body>
	<div class="container">
		<h1>상품 <small>리스트</small></h1>
		<table class="table table-sm">
			<thead>
				<tr>
					<th>row</th><th>num</th><th>name</th><th>price</th><th>state</th>
					<th>수정</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${faqList}" var="faq">
					<tr>
						<td>${FaqDTO.num}</td>
						<td>${FaqDTO.mem_num}</td>
						<td>
							<a class="btn btn-link" href="list.do?num=${FaqDTO.num}">
								${FaqDTO.num}
							</a>
							
						</td>
						<td>${FaqDTO.q_title}</td>
						<td>${FaqDTO.a_content}</td>
						
						<td>
							<div class="modal fade" id="FaqDTOModal${FaqDTO.num}">
								<div class="modal-dialog modal-sm">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title">상품${FaqDTO.num}</h4>
										</div>
									</div>
								</div>
							</div>	
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	
	
	
	