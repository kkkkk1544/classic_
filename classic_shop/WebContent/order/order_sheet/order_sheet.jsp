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
#orderMainDiv{
	width:80%!important;
	margin-right: auto;
	margin-left: auto;
	margin-top: 80px; 
}
h2{
	border-bottom-style: solid;
	height: 40px;
}
#benefitInfo{
	border-top: hidden;
	border-bottom: solid;
}
#benefitInfo th{
	text-align: center;
	vertical-align: middle;
}
#benefitInfo div p span{
	font-weight: bold;
}
#orderTitle th{
	font-size: 14px;
	text-align: center;
	border-top: solid;
}
#orderContents{
	border-bottom: solid;
}
#orderContents td{
	font-size: 14px;
	text-align: center;
	vertical-align: middle;
}
#orderContents p{
	background:#ccc;
	width: 104px;
	height: 104px;
	vertical-align: middle;
}
#orderDetailListDiv div{
	float:left;
	margin-bottom: 5px;
	text-align: left;
}
#orderDetailListDiv li {
	height: auto;
	border: hidden;
	padding-top: 8px;
	padding-bottom: 8px;
}
#orderDetailListDiv2 div{
	float:left;
	margin-bottom: 5px;
	text-align: left;
}
#orderDetailListDiv2 li {
	height: auto;
	border: hidden;
	padding-top: 8px;
	padding-bottom: 8px;
}
#paymentInfo{
	border-bottom: solid;
	width:auto;
	height: auto;
}
#paymentInfo p:first-child{
	float: left;
	color:red;
	font-size: 10px;
}
#paymentInfo p:last-child {
	float:right;
	font-size: 14px;
	margin-right: 8px;
}
#paymentInfo p:last-child span{
	font-weight: bolder;
}
#selectProductDel{
	background: #ccc;
	color:#000;
	border: hidden;
	height: 40px;
}
#orderInfo>p{
	border-bottom: solid;
	margin-top: 20px;
	font-size: 14px;
	font-weight: bolder;
}
.redRound {
	width:16px;
	height:16px;
	background: red;
	border-radius: 10px;
	color:red;
	font-size: 10px;
	vertical-align: middle;
}
#delivInfo>p{
	border-bottom: solid;
	margin-top: 20px;
	font-size: 14px;
	font-weight: bolder;
}
</style>
<body>
	<div class="container" id="orderMainDiv">
		<h2>주문서</h2>
		<table class="table" id="benefitInfo">
			<tr>
				<th width="10%">혜택정보</th>
				<td width="90%">
					<div>
						<p><span>ham</span>님의 회원 등급은 <span>grade</span> 입니다.</p>					
					</div>
					<div>
						<p>가용적립금  :  <span>1,000</span>  원<br>
						쿠폰  :  <span>0</span>  장 </p>
					</div>
				</td>
			</tr>
		</table>
		<table class="table">
			<tbody id="orderTitle">
				<tr>
					<th width="5%"><input type="checkbox"></th>
					<th width="35%">상품정보</th>
					<th width="10%">판매가</th>
					<th width="10%">수량</th>
					<th width="10%">적립금</th>
					<th width="10%">배송구분</th>
					<th width="10%">배송비</th>
					<th width="10%">합계</th>
				</tr>
			</tbody>
			<tbody id="orderContents">
				<tr>
					<td><input type="checkbox"></td>
					<td id ="orderDetailList">
						<div id="orderDetailListDiv">
							<div>
								<p>이미지임</p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong>product Name</strong></li>
									<li class="list-group-item"><strong>color 검정 size M<strong></strong></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>1</td>
					<td>20원</td>
					<td>기본배송</td>
					<td>무료</td>
					<td>100000원</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td id ="orderDetailList2">
						<div id="orderDetailListDiv2">
							<div>
								<p>이미지임</p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong>product Name</strong></li>
									<li class="list-group-item"><strong>color 검정 size M<strong></strong></li>
								</ul>
							</div>
						</div>
					</td>
					<td>100000원</td>
					<td>1</td>
					<td>20원</td>
					<td>기본배송</td>
					<td>무료</td>
					<td>100000원</td>
				</tr>
			</tbody>
		</table>
		<div class="container" id="paymentInfo">
			<p>*상품의 옵션 및 수량변경은 상품 상세 또는 장바구니에서 변경 가능합니다.</p>
			<p>상품구매금액   <span>200,000</span>원 + 배송비 <span>0</span>원 = 합계: <span>200,000</span>원</p>
		</div>
		<button class="btn btn-defult" id="selectProductDel">선택 상품 삭제</button>
		<div id="orderInfo">
			<p>주문정보     <span class="redRound">10</span><span>필수</span></p>
			<table class ="table">
				<tr>
					<th>주문하시는  분</th>
					<td><span class="redRound">10</span></td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><span class="redRound">10</span></td>
					<td><input type="text"><button type="button" class="btn">우편번호</button></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td><input type="text" value="기본주소"></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td><input type="text" value="상세주소"></td>
				</tr>
				<tr>
					<th>일반전화</th>
					<td><span class="redRound">10</span></td>
					<td><input type="number"></td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td><span class="redRound">10</span></td>
					<td><input type="number"></td>
				</tr>
			</table>
		</div>
		<div id="delivInfo">
			<p>배송정보     <span class="redRound">10</span><span>필수</span></p>
			<table class ="table">
				<tr>
					<th>배송지선택</th>
					
				</tr>
				<tr>
					<th>주문하시는  분</th>
					<td><span class="redRound">10</span></td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><span class="redRound">10</span></td>
					<td><input type="text"><button type="button" class="btn">우편번호</button></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td><input type="text" value="기본주소"></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
					<td><input type="text" value="상세주소"></td>
				</tr>
				<tr>
					<th>일반전화</th>
					<td><span class="redRound">10</span></td>
					<td><input type="number"></td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td><span class="redRound">10</span></td>
					<td><input type="number"></td>
				</tr>
			</table>
		</div>
	</div>
<script src="/public/js/jquery/jquery-3.2.1.min.js"></script>
<script src="/public/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>