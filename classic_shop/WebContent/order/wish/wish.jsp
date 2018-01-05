<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	
	<div class="container" id="mainDiv">
		<h2 class="text-left" id="wishName">WISH LIST</h2>
		<table class="table" id="wishTable">
			<tbody id="wishTitle">
				<tr>
					<th width="5%"><input type="checkbox"></th>
					<th width="35%">상품정보</th>
					<th width="10%">판매가</th>
					<th width="10%">수량</th>
					<th width="10%">적립금</th>
					<th width="10%">배송비</th>
					<th width="10%">합계</th>
					<th width="10%">선택</th>
				</tr>
			</tbody>
			<tbody id="wishContents">
				<tr>
					<td><input type="checkbox"></td>
					<td id ="infoList">
						<div id="infoListDiv">
							<div>
								<p>이미지임</p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong>product Name</strong></li>
									<li class="list-group-item"><strong>color 검정 size M</strong></li>
									<li class="list-group-item"><button type="button" class="btn">옵션변경</button></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>1개</td>
					<td>20원</td>
					<td>0원</td>
					<td>100000원</td>
					<td>
						<div class="btn-group-vertical" id="buttonGroup">
							<button type="button" class="btn btn-primary">주문하기</button>
							<button type="button" class="btn btn-primary">장바구니 등록</button>
							<button type="button" class="btn btn-primary">삭제</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td id="infoList2">
						<div id="infoListDiv2">
							<div>
								<p>이미지임</p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong>product Name</strong></li>
									<li class="list-group-item"><strong>color 검정 size M</strong></li>
									<li class="list-group-item"><button type="button" class="btn">옵션변경</button></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>1개</td>
					<td>20원</td>
					<td>0원</td>
					<td>100000원</td>
					<td>
						<div class="btn-group-vertical" id="buttonGroup2">
							<button type="button" class="btn btn-primary">주문하기</button>
							<button type="button" class="btn btn-primary">장바구니 등록</button>
							<button type="button" class="btn btn-primary">삭제</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group" id="wishCRUDBtn">
			<button type="button" class="btn btn-primary">전체삭제</button>
			<button type="button" class="btn btn-primary">선택주문</button>
			<button type="button" class="btn btn-primary">선택삭제</button>
			<button type="button" class="btn btn-primary">선택한 상품을<br> 장바구니에 등록</button>
		</div>
		<button class="btn pull-right" id="allSelectBtn">전체상품 주문</button>
		<div id="pagingBtn">
			<ul class="pagination">
				<li>
					<a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo; Pre</span>
					</a>	
				</li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li>
					<a href="#" aria-label="Next">
						<span aria-hidden="true">Next &raquo;</span>
					</a>	
				</li>
			</ul>
		</div>
	</div>
	<script>	
	</script>