<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp" %>

<div class="comu_body">
	<p class="comu_title">QNA</p>
		<div class="table-responsive">
			<table class="table table-hover">
				<tbody class="qna_title">
					<tr>
						<th>No.</th>
						<th>SUBJECT</th>
						<th>NAME</th>
						<th>DATE</th>
						<th>VIEW</th>
					</tr>
				</tbody>
				<tbody class="qna_contents">
					<tr>
						<td>1</td>
						<td><a href="<c:url value='/comu/qna/read.jsp' />">배송 문의</a></td>
						<td>testMember</td>
						<td>2017-12-30</td>
						<td>0</td>
					<tr>
					<tr>
						<td>1</td>
						<td><a href="javascript:window.open('securePassword.html','_blank','top=300 left=300 width=300 height=300')">배송 문의(비밀글)</a></td>
						<td>testMember</td>
						<td>2017-12-30</td>
						<td>0</td>
					<tr>
				</tbody>
			</table>
		</div>
<!-- 문의하기 버튼 -->
		<div class="insert_btn" align="right">
			<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/comu/qna/register.jsp'/>'">문의하기</button>
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

<!--
1. 리스트에서 글을 누른다.
2. 비밀글인지, 공개글인지 검사.
3. 비밀글인 경우, 비번 입력창을 띄운다.
-->