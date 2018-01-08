<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.classic.order.dto.WishDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<% List<WishDTO> wishList = null;
	if(request.getSession().getAttribute("wishList")!=null){
		wishList = (List<WishDTO>)request.getSession().getAttribute("wishList");
	}%>
	<div class="container" id="mainDiv">
		<h2 class="text-left" id="wishName">WISH LIST</h2>
		<form action="">
		<table class="table" id="wishTable">
			<thead id="wishTitle">
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
			</thead>
			<tbody id="wishContents">
			<%if(wishList==null){ %>
				<td colspan="8">wish list가 비었습니다.<td>
			<%} else { 
				 for(int i = 0; i<wishList.size(); i++){ %>
				<tr>
					<td><input type="checkbox" value="<%=wishList.get(i).getProductNum()%>"></td>
					<td class ="infoList">
						<div class="infoListDiv">
							<div>
								<p><a>이미지임</a></p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong><a><%=wishList.get(i).getProductName()%></a></strong></li>
									<li class="list-group-item"><strong>color <%=wishList.get(i).getColour()%> size <%=wishList.get(i).getSizu() %></strong></li>
									<li class="list-group-item"><button type="button" class="btn btn-default">옵션변경</button></li> <!--  onclick구현 -->
								</ul>
							</div>
						</div>
					</td>
					<td><%=wishList.get(i).getPrice() %>원</td>
					<td><%=wishList.get(i).getWishQuantity() %>개</td>
					<td><%=wishList.get(i).getPrice()*wishList.get(i).getWishQuantity()*0.02 %></td>
					<% if(wishList.get(i).getPrice()>50000){ %>
						<td>무료</td>
						<td><%=wishList.get(i).getPrice()*wishList.get(i).getWishQuantity() %>원</td>
					<%}else{  %>
						<td>2500원</td>
						<td><%=wishList.get(i).getPrice()*wishList.get(i).getWishQuantity()+2500 %>원</td>
					<%} %>
					<td>
						<div class="buttonGroup">
							<button type="button" class="btn btn-default">주문하기</button>
							<button type="button" class="btn btn-default">장바구니 등록</button>
							<button type="button" class="btn btn-default">삭제</button>
						</div>
					</td>
				</tr>
				<%} 
				}%>
			</tbody>
		</table>
		<div id="wishCRUDBtn">
			<button type="button" class="btn btn-default" onclick="allWishDel(5)">전체삭제</button>
			<!-- ~~~~~~~~~~~~~~~mem_num으로 바꿔야댐~~~~~~~~`~~~~~~~~~~~~-->
			<button type="button" class="btn btn-default">선택주문</button>
			<button type="button" class="btn btn-default"  onclick="delWishSelected()">선택삭제</button>
			<button type="button" class="btn btn-default" id="moveCartBtn">선택한 상품을<br> 장바구니에 등록</button>
			<button class="btn btn-default pull-right">전체상품 주문</button>
		</div>
		</form>
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
var url="wishlist.do";
	
var allWishDel = function(mem_num){
	var url = this.url+"?num="+mem_num;
	var method="DELETE";
	var http = new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(this.readyStatus==4 && this.status==200){
			var delete_json = JSON.parse(this.response);
			console.log(delete_json["delete"]);
			if(dele_json["delete"]){
				alert("삭제되었습니다.");
			}else{
				alert("삭제실패");
			}
		}
	}
	http.open(method,url,true);
	http.send();
}
var delWishSelected =function(product_num){
}
</script>