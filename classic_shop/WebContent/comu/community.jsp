<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- COMMUNITY MENU -->
<div class="comu_menu">
	<div class="container">
		<h2>COMMUNITY</h2>
			<ul class="nav nav-tabs">
				<li><a href="javascript:noticeList()">NOTICE</a></li>
				<li><a href="javascript:qnaList()">QNA</a></li>
				<li><a href="javascript:faqList()">FAQ</a></li>
			</ul>
	</div>
</div>
<!-- LIST -->
<div class="comu_body">
	<p class="comu_title"></p>
		<div class="table-responsive">
			<table class="table table-hover">
				<tbody class="table_title">
					<tr>
						<th>No.</th>
						<th>SUBJECT</th>
						<th>NAME</th>
						<th>DATE</th>
						<th>VIEW</th>
					</tr>
				</tbody>
				<tbody class="table_contents">
				</tbody>
			</table>
		</div>
<!-- REGISTER BTN -->
			<c:if test="${loginMem.grade>=0}">
				<!-- 회원인 경우 버튼 보이기-->
				<div class="insert_btn" align="right" id="qnaBtnHide">
					<button type="button" class="btn btn-default">문의하기</button>
				</div>
			</c:if>
<!-- PAGING -->
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
<!-- SEARCH -->
		<div class="qna_search" align="left" id="qnaSearchForm">
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