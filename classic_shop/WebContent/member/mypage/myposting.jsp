<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="member_body">
	<div class="container">
		<!-- My QNA -->
		<div class="myQna_wrap">
			<h2 class="myQnaTitle">MY QNA</h2>
			<table class="table myQna_table">
				<thead>
					<tr>
						<th class="col-sm-1">
							<label>
								<input type="checkbox" id="blankCheckbox" value="option1" aria-label="checkbox">
							</label>
						</th>
						<th class="col-sm-1">No.</th>
						<th class="col-sm-3">SUBJECT</th>
						<th class="col-sm-1">작성자</th>
						<th class="col-sm-1">작성일</th>
						<th class="col-sm-1">조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<label>
								<input type="checkbox" id="blankCheckbox" value="option1" aria-label="checkbox">
							</label>
						</td>
						<td>1</td>
						<td><a href="#">배송 문의입니다.</a></td>
						<td>나야나</td>
						<td>18-01-03</td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
 			<div class="myposting_btn_group">
				<button class="btn btn-default" type="button">전체 선택</button>
				<button class="btn btn-default" type="button">선택 삭제</button>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="coupon_paging">
					  <ul class="pagination pagination-sm">
					    <li><a href="#"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li><a href="#"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
					  </ul>
					</div>
         		</div>
			</div>
		</div>
		<div class="myReview_wrap">
			<h2 class="myReviewTitle">MY REVIEW</h2>
			<div class="myReview_top_menu">
				<ul class="top_menu_left">
					<li>
						<div class="top_menu_text">
							0개의 리뷰를 작성하셨습니다.
						</div>
					</li>
				</ul>
				<ul class="top_menu_two">
					<li class="top_menu_li li_one">
						<a href="#">
							포토리뷰 모아보기
						</a>
					</li>
					<li class="top_menu_li li_two">
						<div class="top_menu_icon">
							<form name="qnaSearchForm" action="" class="form-inline">
								<input type="text" class="form-control searchInput" name="searchValue" placeholder="검색어 입력">
								<button type="submit" class="btn btn-default">&#128269;</button>
							</form>
						</div>
					</li>
				</ul>
			</div>
			<div class="review_page">
				<div></div>
			
			</div>
		</div>
	</div>
</div>