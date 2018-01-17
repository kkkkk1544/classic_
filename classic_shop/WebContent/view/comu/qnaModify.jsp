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
	<div class="container">
		<p class="comu_title">QNA</p>
		<!-- QNA 수정 -->
		<form name="qnaModifyForm" action="<c:url value='/community/qna/modify.do'/>" method="post">
			<!-- SUBJECT 선택 -->	
			<div class="form-group">
				<label id="subjectField">SUBJECT</label>
				<span class="form-inline">
					<select name="subjectValue" class="form-control optionField">
						<option value="${qnaModify.subject}">
							<c:choose>
								<c:when test="${qnaModify.subject==0}">상품 문의</c:when>
								<c:when test="${qnaModify.subject==1}">배송 문의</c:when>
								<c:when test="${qnaModify.subject==2}">배송 전 변경</c:when>
								<c:when test="${qnaModify.subject==3}">입금 문의</c:when>
								<c:when test="${qnaModify.subject==4}">교환/환불 문의</c:when>
								<c:when test="${qnaModify.subject==5}">기타 문의</c:when>
							</c:choose>
						</option>
						<option value="0">상품 문의</option>
						<option value="1">배송 문의</option>
						<option value="2">배송 전 변경</option>
						<option value="3">입금 문의</option>
						<option value="4">교환/환불 문의</option>
						<option value="5">기타 문의</option>
					</select>
					<input type="hidden" name="memNum" value="${loginMem.num}">
					<input type="hidden" name="qnaNum" value="${qnaModify.num}">
				</span>
			</div>
			<!-- QNA 글 내용 -->
			<div class="form-group">
				<textarea class="form-control" rows="20" name="qnaContent">${qnaModify.content}</textarea>
			</div>
			<!-- QNA 첨부파일 및 옵션 -->
			<div class="qna_option">
				<label class="col-xs-2">File Upload</label>
				<input type="file" id="qnaFile" name="qnaFileValue" style="margin: 0; display: inline-block;">
			</div>
			<div class="qna_option">
				<label class="col-xs-2">공개</label>
					<div class="checkbox">
						<input type="radio" name="qnaSecure" id="qnaOpen" value="0" checked> 공개
						<input type="radio" name="qnaSecure" id="qnaSecure" value="1"> 비공개
					</div>
			</div>
			<div class="qna_option">
				<label class="col-xs-2">Password</label>
				<input type="password" name="qnaPwdValue" placeholder="비밀번호 설정"  disabled>
			</div>
			<!-- QNA 버튼 -->
			<div class="qna_btn_group">
				<button type="button" class="btn btn-default btn-lg" onclick="modifyQna(this.form)">수정</button>
				<button type="button" class="btn btn-default btn-lg" onclick="qnaListBtn()">취소</button>
			</div>
		</form>
	</div>
</div>
