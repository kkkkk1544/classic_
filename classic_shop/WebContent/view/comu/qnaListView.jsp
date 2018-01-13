<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/comu.css' />">
<script src="<c:url value='/public/js/comu.js'/>"></script>
</head>
<body>
<!-- COMMUNITY MENU -->
<div class="comu_menu">
	<div class="container">
		<h2>COMMUNITY</h2>
			<ul class="nav nav-tabs">
				<li><a href="<c:url value='/community/notice.do' />">NOTICE</a></li>
				<li><a href="<c:url value='/community/qna.do' />">QNA</a></li>
				<li><a href="<c:url value='/community/faq.do' />">FAQ</a></li>
			</ul>
	</div>
</div>
<div class="comu_body">
	<p class="comu_title">QNA</p>
		<div class="table-responsive table-div">
			<table class="table table-hover" id="qna_read">
				<tbody class="qna_title">
					<tr>
						<th class='col-sm-1'>No.</th>
						<th class='col-sm-6' style="text-align: left;">SUBJECT</th>
						<th class='col-sm-1'>NAME</th>
						<th class='col-sm-1'>DATE</th>
						<th class='col-sm-1'>VIEW</th>
					</tr>
				</tbody>
				<tbody class="qna_contents">
					<c:forEach var="qnaList" items="${qnaList}">
						<tr>
							<td>${qnaList.num}</td>
								<td style="text-align: left;">
									<a href="javascript:readQna('${qnaList.num}')">
										<c:choose>
											<c:when test="${qnaList.subject==0}">상품 문의</c:when>
											<c:when test="${qnaList.subject==1}">배송 문의</c:when>
											<c:when test="${qnaList.subject==2}">배송 전 변경</c:when>
											<c:when test="${qnaList.subject==3}">입금 문의</c:when>
											<c:when test="${qnaList.subject==4}">교환/환불 문의</c:when>
											<c:when test="${qnaList.subject==5}">기타 문의</c:when>
										</c:choose>
									</a>
									<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
									<c:if test="${qnaList.secure==1}">
										<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
									</c:if>
								</td>
							<td>${qnaList.name}</td>
							<td>${qnaList.indate}</td>
							<td>${qnaList.count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
<!-- 문의하기 버튼 -->
	<c:if test="${loginMem ne null}">
		<div class="comu_insert_btn" align="right">
			<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/community/qna/register.do'/>'">문의하기</button>
		</div>
	</c:if>
<!-- 페이징 -->
	<jsp:include page="/template/paging.jsp"/>
<!-- 검색 -->
		<div class="qna_search" align="left">
			<form name="qnaSearchForm" action="" class="form-inline">
				<select name="searchField" class="form-control">
					<option value="">SEARCH</option>
					<option value="subject">SUBJECT</option>
					<option value="name">NAME</option>
				</select>
					<input type="text" class="form-control" name="searchValue">
					<button type="submit" class="btn btn-default">&#128269;</button>
			</form>
		</div>
</div>