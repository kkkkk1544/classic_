<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="table-responsive">
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
					<c:forEach var="qna" items="${qnaList}">
						<tr>
							<td>${qna.num}</td>
							<td style="text-align: left;">
								<a href="javascript:readQna('${qna.num}')">
									<c:choose>
										<c:when test="${qna.subject==0}">상품 문의</c:when>
										<c:when test="${qna.subject==1}">배송 문의</c:when>
										<c:when test="${qna.subject==2}">배송 전 변경</c:when>
										<c:when test="${qna.subject==3}">입금 문의</c:when>
										<c:when test="${qna.subject==4}">교환/환불 문의</c:when>
										<c:when test="${qna.subject==5}">기타 문의</c:when>
									</c:choose>
								</a>
								<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
									<c:if test="${qna.secure==1}">
										<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
									</c:if>
							</td>
							<td>${qna.name}</td>
							<td>${qna.indate}</td>
							<td>${qna.count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
<!-- 문의하기 버튼 -->
	<c:if test="${loginMem ne null}">
		<div class="comu_insert_btn" align="right">
			<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/comu/qna/register.jsp'/>'">문의하기</button>
		</div>
	</c:if>
<!-- 각종 버튼 -->
<!-- 		<div class="qna_list_btn" align="left" style="display: none;">
				<button type="button" class="btn btn-default" onclick="qnaListBtn()">목록</button>
			</div>
			<div class="qna_btn_group" align="right" style="display: none;">
				<button type="button" class="btn btn-default" onclick="modifyQna()">수정</button>
				<button type="button" class="btn btn-default" onclick="removeQna()">삭제</button>
			</div> -->
<!-- 댓글 폼 -->
			<div class="qna_reply_form" style="display: none;">
				<table class="table table-bordered">
					<tr>
						<th class="col-sm-2" id="qnaReplyId">작성자</th>
						<td>댓글 내용</td>
					</tr>
				</table>
			</div>
<!-- 페이징 -->
		<div class="comu_paging">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</div>
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
