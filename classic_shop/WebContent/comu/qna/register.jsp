<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp" %>

<div class="comu_body">
	<div class="container">
	<p class="comu_title">QNA</p>
		<!-- QNA 글 등록 -->
		<form name="qnaRegisterForm">
			<!-- SUBJECT 선택 -->
			<div class="form-group">
				<label id="subjectField">SUBJECT</label>
				<span class="form-inline">
					<select name="subjectValue" class="form-control" id="optionField">
						<option value="">선택</option>
						<option value="0">상품 문의</option>
						<option value="1">배송 문의</option>
						<option value="2">배송 전 변경</option>
						<option value="3">입금 문의</option>
						<option value="4">교환/환불 문의</option>
						<option value="5">기타 문의</option>
					</select>
				</span>
			</div>
			<!-- QNA 글 내용 -->
			<div class="form-group">
				<textarea class="form-control" rows="20" name="qnaContents"></textarea>
			</div>
			<!-- QNA 첨부파일 및 옵션 -->
			<div class="qna_option">
				<label class="col-xs-2">File Upload</label>
				<input type="file" id="qnaFile" style="margin: 0; display: inline-block;">
			</div>
			<div class="qna_option">
				<label class="col-xs-2">공개</label>
					<div class="checkbox">
						<input type="radio" name="secure" id="qnaOpen" value="0" checked> 공개
						<input type="radio" name="secure" id="qnaSecure" value="1"> 비공개
					</div>
			</div>
			<div class="qna_option">
				<label class="col-xs-2">Password</label>
				<input type="password" name="pwd" placeholder="비밀번호 설정" disabled>
			</div>
			<!-- QNA 버튼 -->
			<div class="qna_btn_group">
				<button type="submit" class="btn btn-default btn-lg">등록</button>
				<button type="reset" class="btn btn-default btn-lg" onclick="location.href='<c:url value='/comu/qna/list.jsp'/>'">취소</button>
			</div>
		</form>
	</div>
</div>
<!--
	memo
		- 비공개 라디오 버튼 클릭하면, 비밀번호 input창 보이기
		- 첨부파일 +,- 아이콘 추가
		- 기타 유효성 검사(마지막에)
  -->

