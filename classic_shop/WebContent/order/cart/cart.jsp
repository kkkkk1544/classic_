<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLASSIC</title>
<link href="/public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
#cartMainDiv{ 
	width:80%!important;
	margin-right: auto;
	margin-left: auto;
	margin-top: 80px;
}  
#cartTable{
	width:100%;
	border-bottom: hiddien;
	margin-bottom: 5px;
}
#cartTitle{
	border-top:hidden;
	border-bottom: 1px solid black!important;
}
#cartTitle th{
	font-size: 14px;
	text-align: center;
}
#cartContents{
	border-bottom: 1px solid #000;
}
#cartContents td{
	font-size: 14px;
	text-align: center;
	vertical-align: middle;
}
#cartContents p{
	background:#ccc;
	width: 104px;
	height: 104px;
	vertical-align: middle;
}
h2{
	border-bottom-style: solid;
	height: 40px;
}
#cartListBtn button{
	background: #CCC;
	color: black;
	margin: 2px;
	border: none;
	border-radius: 4px;
	height: 35px;
	font-size: 10px;
}
#cartListBtn2 button{
	background: #CCC;
	color: black;
	margin: 2px;
	border: none;
	border-radius: 4px;
	height: 35px;
	font-size: 10px;
}
#cartDetailList{
	text-align: left!important;
}
#cartDetailListDiv{
	display: inline-block;
	margin: 0px;
	text-align: left;
}
#cartDetailListDiv div{
	float:left;
	margin-bottom: 5px;
	text-align: left;
}
#cartDetailListDiv p{
	margin-bottom: 0px;
}
#cartDetailListDiv ul{
	margin-bottom: 0px;
	font-size: 10px;
	height: 104px;
}
#cartDetailListDiv li {
	height: auto;
	border: hidden;
	padding-top: 8px;
	padding-bottom: 8px;
}
#cartDetailListDiv li button{
	font-size: 10px;
	background: #ccc;
}
#productQuantity div{
	float: left;
}
#productQuantity div input{
	width: 50px;
}
#productQuantity div button{
	height: 27px;
	width: 50px;
	font-size: 10px;
	border-radius: 0px;
}
#cartDetailList2{
	text-align: left!important;
}
#cartDetailListDiv2{
	display: inline-block;
	margin: 0px;
}
#cartDetailListDiv2 div{
	float:left;
	margin-bottom: 5px;
}
#cartDetailListDiv2 p{
	margin-bottom: 0px;
}
#cartDetailListDiv2 ul{
	margin-bottom: 0px;
	font-size: 10px;
	text-align: left;
	height: 104px;
}
#cartDetailListDiv2 li {
	height: auto;
	border: hidden;
	padding-top: 8px;
	padding-bottom: 8px;
}
#productQuantity2 div{
	float: left;
}
#productQuantity2 div input{
	width: 50px;
}
#productQuantity2 div button{
	height: 27px;
	width: 50px;
	font-size: 10px;
	border-radius: 0px;
}
#cartDetailListDiv2 li button{
	font-size: 10px;
	background: #ccc;
}
#cartCRUDBtn button{
	background: #CCC;
	color: black;
	margin: 2px;
	border: none;
	border-radius: 4px;
	height :35px;
	font-size: 10px;
}
#AllPriceTab{
	margin-top: 25px;
}
#AllPriceTab th,td{
	text-align: center;
	font-size: 14px;
}
#paidUpdateBtn{
}
#paidUpdateBtn button{
	background: #CCC;
	color: #000;
	font-size: 14px;
	border: hidden;
	margin:2px;
	border-radius: 4px;
}
#cartInfo p{
	margin-top: 25px;
	height: 200px;
	text-align: center;
	fontsiz:14px;
	background: #CCC;
}
</style>
<body>
	<div class="container" id="cartMainDiv">
		<h2 class="text-left">CART</h2>
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
								<p>이미지임</p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong>product Name</strong></li>
									<li class="list-group-item"><strong>color 검정 size M<strong></strong></li>
									<li class="list-group-item"><button type="button" class="btn">옵션변경</button></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>
						<div id="productQuantity">
							<div>
								<input type="number" value="1">
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
						<div class="btn-group-vertical" id="cartListBtn">
							<button type="button" class="btn btn-primary">주문하기</button>
							<button type="button" class="btn btn-primary">WISH LIST 등록</button>
							<button type="button" class="btn btn-primary">삭제</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td id="cartDetailList2">
						<div id="cartDetailListDiv2">
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
					<td>
						<div id="productQuantity2">
							<div>
								<input type="number" value="1">
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
						<div class="btn-group-vertical" id="cartListBtn2">
							<button type="button" class="btn btn-primary">주문하기</button>
							<button type="button" class="btn btn-primary">장바구니 등록</button>
							<button type="button" class="btn btn-primary">삭제</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group" id="cartCRUDBtn">
			<button type="button" class="btn btn-primary">전체삭제</button>
			<button type="button" class="btn btn-primary">선택주문</button>
			<button type="button" class="btn btn-primary">선택삭제</button>
			<button type="button" class="btn btn-primary">선택한 상품을<br> 위시리스트에 등록</button>
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
		<div class="btn-group" id="paidUpdateBtn">
			<button type="button" class="btn btn-primary"><strong>전체 상품 주문</strong></button>
			<button type="button" class="btn btn-primary"><strong>선택 상품 주문</strong></button>
		</div>
		<div id="cartInfo">
			<p>장바구니 안내문</p>
		</div>
	</div>
<script src="/public/js/jquery/jquery-3.2.1.min.js"></script>
<script src="/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>