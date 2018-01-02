<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp" %>

<div class="comu_body">
	<div class="container">
		<p class="comu_title">QNA</p>
			<div class="table-responsive">
				<table class="table table-condensed">
					<tr>
						<th>SUBJECT</th>
						<td>배송 문의</td>
						<th>NAME</th>
						<td>testMember</td>
					</tr>
					<tr>
						<th>DATE</th>
						<td>2017-12-30</td>
						<th>VIEW</th>
						<td>0</td>
					</tr>
				</table>
				<table class="table table-bordered">
					<tr>
						<td>운송장 번호는 어디서 확인하나요?</td>
					</tr>
				</table>
			</div>
			<div class="qna_list_btn" align="left">
				<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/comu/qna/list.jsp'/>'">목록</button>
			</div>
			<div class="qna_btn_group" align="right">
				<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/comu/qna/modify.jsp'/>'">수정</button>
				<button type="button" class="btn btn-default">삭제</button>
			</div>
<!-- 댓글 폼 -->
			<div class="qna_reply_form">
				<table class="table table-bordered">
					<tr>
						<th class="col-sm-2" id="qnaReplyId">작성자</th>
						<td>댓글 내용</td>
					</tr>
				</table>
			</div>
	</div>
</div>