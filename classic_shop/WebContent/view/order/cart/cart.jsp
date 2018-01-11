<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/order.css' />">
</head>
<body>
	<div class="container" id="cartMainDiv">
		<h2 class="text-left" id="cartName">CART</h2>
		<table class="table" id="cartTable">
			<tbody id="cartTitle">
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
			<tbody id="cartContents">
				<tr>
					<td><input type="checkbox"></td>
					<td id ="cartDetailList">
						<div id="cartDetailListDiv">
							<div>
								<p><a href="#">이미지임</a></p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong><a href="#">product Name</a></strong></li>
									<li class="list-group-item"><strong><a href="#">color 검정 size M</a></strong></li>
									<li class="list-group-item"><button type="button" class="btn">옵션변경</button></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>
						<div id="productQuantity">
							<div>
								<input type="number" value="1" min="1">
							</div>
							<div>
								<button class="btn" >변경</button>
							</div>					
						</div>
					</td>
					<td>20원</td>
					<td>0원</td>
					<td>100000원</td>
					<td>
						<div class="btn-group" id="cartListBtn">
							<button type="button" class="btn" >주문하기</button>
							<button type="button" class="btn">WISH LIST 등록</button>
							<button type="button" class="btn">삭제</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td id="cartDetailList2">
						<div id="cartDetailListDiv2">
							<div>
								<p><a href="#">이미지임</a></p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong><a href="#">product Name</a></strong></li>
									<li class="list-group-item"><strong><a href="#">color 검정 size M</a></strong></li>
									<li class="list-group-item"><button type="button" class="btn">옵션변경</button></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>
						<div id="productQuantity2">
							<div>
								<input type="number" value="1" min="1">
							</div>
							<div>
								<button class="btn" >변경</button>
							</div>					
						</div>
					</td>
					<td>20원</td>
					<td>0원</td>
					<td>100000원</td>
					<td>
						<div class="btn-group" id="cartListBtn2">
							<button type="button" class="btn">주문하기</button>
							<button type="button" class="btn">장바구니 등록</button>
							<button type="button" class="btn">삭제</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group" id="cartCRUDBtn">
			<button type="button" class="btn">전체삭제</button>
			<button type="button" class="btn">선택주문</button>
			<button type="button" class="btn">선택삭제</button>
			<button type="button" class="btn">선택한 상품을<br> 위시리스트에 등록</button>
		</div>
		<div>
			<table class="table table-bordered" id="AllPriceTab">
				<tr>
					<th>총 상품금액</th>
					<th>총 배송비</th>
					<th>총 결제예상금액</th>
				</tr>
				<tr>
					<td>200,000원</td>
					<td>0원</td>
					<td>200,000원</td>
				</tr>
			</table>
		</div>
		<div id="paidUpdateBtn">
			<button type="button" class="btn"><strong>전체 상품 주문</strong></button>
			<button type="button" class="btn"><strong>선택 상품 주문</strong></button>
		</div>
		<div id="cartInfo">
			<p>장바구니 안내문</p>
		</div>
	</div>
