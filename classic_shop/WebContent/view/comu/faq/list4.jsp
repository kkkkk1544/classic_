<%@ page pageEncoding="UTF-8"%>
<nav class>


																		<%-- 0112 작업중 jsp --%>
</nav>

<body>


<title>상품 리스트</title>
	<!-- 리스트 글 제목을 목록으로 불러오는것을 모달 아닌
	 버전으로 한번 만들어 봣어요
	나중에 둘중 구현이 더 잘되는걸로 하려구요 -->


	<div class="modal-body">Modal body..</div>
	<button type="button" class="btn btn-secondary" data-dismiss="modal">
		그냥 버튼</button>

	<button data-toggle="modal" data-target="#testModal">open
		testModal</button>

	<div>
		<h6>${FaqDTO}</h6>
	</div>

	<h6>
		<small>리스트 </small>
	</h6>

	<table class="table table-sm">
		<thead>
			<tr>
				<th>NUM</th>
				<th>MEM_NUM</th>
				<th>Q_TITLE</th>
				<th>A_CONTENT</th>
			</tr>
		</thead>

	</table>


	<c:forEach items="${faqList}" var="FaqDTO">
		<div>
			<a class="num-link" href="list.do?row=${FaqDTO.num}">
				<th>이것은 faq글 이다</th> <a class="num-link"
				href="list.do?num=${FaqDTO.mem_num}"> </a>

				<tr>

					<td>${FaqDTO.mem_num}</td>
			</a>
		</div>
	</c:forEach>


	<div>
		<a class="num-text" href="list.do?row=${FaqDTO.num}">
			<th>글목록입니다</th>
			<tr>
		</a>
	</div>



	<div>
		<%--여기부터  -div전체--%>
		${FaqDTO}

		<c:forEach items="${faqList}" var="FaqDTO">
			<tr>
				<td>${FaqDTO.mem_num}</td>
				<td>${FaqDTO.num }</td>
				<td>${FaqDTO.q_title}</td>
				<td>${FaqDTO.a_content}</td>
				<th>헐헐헐4</th>
			</tr>
		</c:forEach>


		<c:forEach begin="1" end="${FaqDTO.member_num}" var="i">
			<th>헐헐헐3</th>
		</c:forEach>
	</div>



	<div>
		<c:forEach begin="1" end="${FaqDTO.mem_num}" var="i">
			<c:if test='${FaqDTO.mem_num==i}'> active</c:if>"
			<th>헐헐헐2</th>
		</c:forEach>




		<a class="num-link" href="list.do?num=${FaqDTO.mem_num}">
			<tr>
				<td>${FaqDTO.mem_num }</td>
				<td>${FaqDTO.num }</td>
				<td>${FaqDTO.q_title}</td>
				<td>${FaqDTO.a_content}</td>
			</tr>
			<th>접기</th>

		</a>

	</div>


	</div>
   
		<h6>${FaqDTO}</h6>
	</div>

	<h6>
		<small>리스트 </small>
	</h6>

	<table class="table table-sm">
		<thead>
			<tr>
				<th>NUM</th>
				<th>MEM_NUM</th>
				<th>Q_TITLE</th>
				<th>A_CONTENT</th>
			</tr>
		</thead>

	</table>


	<c:forEach items="${faqList}" var="FaqDTO">
		<div>
			<a class="page-link" href="list.do?row=${FaqDTO.num}">
				<th>이것은 faq글 이다</th>
				
				
				
				<a class="page-link" href="list.do?page=${FaqDTO.row_num}">
				</a>
				
				<tr>

					<td>${FaqDTO.row_num }</td>
			</a>
		</div>
	</c:forEach>





	<div>
		<a class="page-text" href="list.do?row=${FaqDTO.num}">
			<th>글목록입니다</th>
			<tr>
		</a>
	</div>



	<div>
		<%--여기부터  -div전체--%>
		${FaqDTO}

		<c:forEach items="${faqList}" var="FaqDTO">
			<tr>
				<td>${FaqDTO.mem_num}</td>
				<td>${FaqDTO.num }</td>
				<td>${FaqDTO.q_title}</td>
				<td>${FaqDTO.a_content}</td>
<th>헐헐헐4</th>
			</tr>
		</c:forEach>


		<c:forEach begin="1" end="${FaqDTO.member_num}" var="i">
	<th>헐헐헐3</th>
		</c:forEach>
	</div>



	<div>
		<c:forEach begin="1" end="${FaqDTO.row_num}" var="i">
			<c:if test='${FaqDTO.row_num==i}'> active</c:if>"
			<th>헐헐헐2</th>
		</c:forEach>




		<a class="page-link" href="list.do?page=${FaqDTO.row_num}">
			<tr>
				<td>${FaqDTO.mem_num}</td>
				<td>${FaqDTO.num }</td>
				<td>${FaqDTO.q_title}</td>
				<td>${FaqDTO.a_content}</td>ㄴ
				<th>헐헐헐1</th>
			</tr>
			<th>접기</th>

		</a>

	</div>


	</div>