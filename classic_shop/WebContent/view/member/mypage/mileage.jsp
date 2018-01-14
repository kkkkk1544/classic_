<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/member.css' />">
    
<div class="member_body">
	<div class="container">
		<div class="mileage_wrap">
			<div class="mileage_info">
				<h2 class="mileageTitle">MILEAGE</h2>
				<div class="mileage_info_value">
					<ul>
						<li>
							<strong>총 적립금</strong> 
							<span class="mileageAmount">0원</span>
						</li>
						<li>
							<strong>사용한 적립금</strong> 
							<span class="mileageAmount">0원</span>
						</li>
						<li>
							<strong>환불 예정 적립금</strong> 
							<span class="mileageAmount">0원</span>
						</li>
						<li>
							<strong>사용 가능 적립금</strong> 
							<span class="mileageAmount">0원</span>
						</li>
					</ul>
				</div>
			</div>
			<table class="table mileage_table">
				<thead>
					<tr>
						<th class="col-sm-1">No.</th>
						<th class="col-sm-1">주문 날짜</th>
						<th class="col-sm-3">관련 주문</th>
						<th class="col-sm-1">적립금</th>
						<th class="col-sm-2">내용</th>
						<th class="col-sm-1">총 적립금</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>18/01/02</td>
						<td>무슨 주문</td>
						<td>10M</td>
						<td>내용내용내용</td>
						<td>10M</td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-xs-12">
					<div class="mileage_paging">
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
			<div class="mileageGuide_wrap">
				<p>적립금 안내</p>
				<div class="mileageGuide">
					<div>
						<ol>
							<li class="item1">주문으로 발생한 적립금은 배송완료 후 1일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 1일 동안은 미가용 적립금으로 분류됩니다.</li>
							<li class="item2">미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
							<li class="item3">사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>