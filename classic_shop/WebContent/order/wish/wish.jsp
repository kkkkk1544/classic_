<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.classic.order.dto.WishDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<input type="hidden" value="여기에 고객이 담은 정보가 일시적으로 들어가는 것">
<input type="text" value="마찬가지" style="display:none;">


<body>
	<div class="container" id="mainDiv">
		<h2 class="text-left" id="wishName">WISH LIST</h2>
		<table class="table" id="wishTable">
			<thead id="wishTitle">
				<tr>
					<th width="5%"><input type="checkbox" id="allCheck"></th>
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
			<c:choose>
				<c:when test="${(fn:length(wishList))!=0}">
					<c:forEach var="wish" items="${wishList}">
						<tr>
							<td><input type="checkbox" value="${wish.productNum}" class="checkWish"></td>
							<td class="infoList">
								<div class="infoListDiv">
									<div>
										<p><a>이미지임</a></p>
									</div>
								</div>
								<div>
									<ul class="list-group">
										<li class="list-group-item"><strong><a>${wish.productName}</a></strong></li>
										<li class="list-group-item"><strong>color ${wish.colour} size ${wish.sizu}</strong></li>
										<li class="list-group-item"><button type="button" class="btn btn-default">옵션변경</button></li> <!--  onclick구현 -->
									</ul>
								</div>
							</td>
							<td>${wish.price}원</td>
							<td>${wish.wishQuantity}개</td>
							<fmt:parseNumber var="percent" value="${((wish.price*wish.wishQuantity)*0.02)}" integerOnly="true" />
							<td>${percent}</td>
							<c:choose>
								<c:when test="${wish.price>50000}">
									<td>무료</td>
									<td>${wish.price*wish.wishQuantity}원</td>
								</c:when>
								<c:when test="${wish.price<50000}">
									<td>2500원</td>
									<td>${wish.price*wish.wishQuantity+2500}원</td>
								</c:when>
							</c:choose>
							<td>
								<div class="buttonGroup">
									<input type="hidden" value="num=${param.num}&product_num=${wish.productNum}&product_name=${wish.productName}&">
									<button type="button" class="btn btn-default" id="partOrder">주문하기</button>									
									<button type="button" class="btn btn-default">장바구니 등록</button>
									<button type="button" class="btn btn-default" onclick="pickWishDel(${param.num},${wish.productNum})">삭제</button>
								</div>
							</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="8" id="emptyTableData">wish list가 비었습니다.<td>
					</tr>
				</c:otherwise>
			</c:choose>
<%-- 			<c:choose>
				<c:when test="${wishList!=null}">
					<c:forEach var="wish" items="${wishList}">
					<tr>
					<!-- var == 내가 설정하는 이름 즉, 내가 ${이 안에서 쓰는 변수이름} -->
					<!-- items == 내가 컨트롤러에서 setAtt~("wishList", wishDTO) 이렇게 설정한 이름 -->
						<!-- wishList에 뭐가 있을 때 -->
						<td><input type="checkbox" value="${wish.productNum}"></td>		
						<td class ="infoList">
						<div class="infoListDiv">
							<div>
								<p><a>이미지임</a></p>
							</div>
							<div>
								<ul class="list-group" >
									<li class="list-group-item"><strong><a>${wish.productName}</a></strong></li>
									<li class="list-group-item"><strong>color ${wish.colour} size ${wish.sizu} %></strong></li>
									<li class="list-group-item"><button type="button" class="btn btn-default">옵션변경</button></li> <!--  onclick구현 -->
								</ul>
							</div>
						</div>
					</td>
					<td>${wish.price}원</td>
					<td>${wish.wishQuantity}개</td>
					<td>(${wish.productNum}*${wish.wishQuantity*0.02}</td>
					<c:choose>
						<c:when test="${wish.price>50000}">
							<td>무료</td>
							<td>${wish.price*wish.wishQuantity}원</td>
						</c:when>
						<c:when test="${wish.price<50000}">
							<td>2500원</td>
							<td>${wish.price*wish.wishQuantity+2500}원</td>
						</c:when>
					</c:choose>
					<td>
						<div class="buttonGroup">
							<button type="button" class="btn btn-default">주문하기</button>
							<button type="button" class="btn btn-default">장바구니 등록</button>
							<button type="button" class="btn btn-default">삭제</button>
						</div>
					</td>
				</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<!-- wishList에 아무것도 없을 때 -->
					<tr>
						<td colspan="8">wish list가 비었습니다.<td>
					</tr>
				</c:otherwise>
			</c:choose> --%>
			<%-- <%if(wishList==null){ %>
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
				}%> --%>
			</tbody>
		</table>
		<div id="wishCRUDBtn">
			<button type="button" class="btn btn-default" onclick="allWishDel(${param.num})">전체삭제</button>
			<!-- ~~~~~~~~~~~~~~~mem_num으로 바꿔야댐~~~~~~~~`~~~~~~~~~~~~-->
			<button type="button" class="btn btn-default" >선택주문</button>
			<button type="button" class="btn btn-default"  onclick="delWishSelected(${param.num})">선택삭제</button>
			<button type="button" class="btn btn-default" id="moveCartBtn">선택한 상품을<br> 장바구니에 등록</button>
			<button class="btn btn-default pull-right">전체상품 주문</button>
		</div>
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
$("#partOrder").click(function(){
	url="http://localhost:9999/classic_shop/order/order_sheet/order_sheet.jsp?";
	
});
$("#allCheck").click(function(){
	if(this.checked){
		$('input:checkbox[class*="checkWish"]').each(function(){
			this.checked = true;
		});
	} else {
		$('input:checkbox[class*="checkWish"]').each(function(){
			this.checked = false;
		});
	}	
});

var delWishSelected=function(mem_num){
	if(${(fn:length(wishList))!=0}){
		var url ="http://localhost:9999/classic_shop/order/delwish.do?num="+mem_num+"&product_num=";
		var method="GET";
		var http = new XMLHttpRequest();
		$('input:checkbox[class*="checkWish"]').each(function(){
			if(this.checked){
				url+=this.value+"_";
			}		
		});
		url=url.substr(0, url.length-1);
		http.onreadystatechange=function(){
			if(this.readyState==4 && this.status==200){
				var delete_json = JSON.parse(this.response);
				if(delete_json["delete"]){
					alert("삭제되었습니다.");
					location.reload();
				}else{
					alert("삭제실패");
				}
			}
		}
		http.open(method,url,true);
		http.send();
	} else {
		alert("wish list가 비었습니다.");
	}
}
var allWishDel = function(mem_num){
	if(${(fn:length(wishList))!=0}){
		var url ="http://localhost:9999/classic_shop/order/delwish.do?num="+mem_num;
		var method="DELETE";
		var http = new XMLHttpRequest();
		http.onreadystatechange=function(){
			if(this.readyState==4 && this.status==200){
				var delete_json = JSON.parse(this.response);
				if(delete_json["delete"]){
					alert("삭제되었습니다.");
				}else{
					alert("삭제실패");
				}
			}
		}
		http.open(method,url,true);
		http.send();
	} else {
		alert("wish list가 비었습니다.");
	}
}
var pickWishDel = function(mem_num,product_num){
	var url ="http://localhost:9999/classic_shop/order/delwish.do?num="+mem_num+"&product_num="+product_num;
	var method= "PUT";
	var http = new XMLHttpRequest();
	console.log
	http.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			var delete_json = JSON.parse(this.response);	
			console.log(delete_json["delete"]);
			if(delete_json["delete"]){
				alert("삭제되었습니다.");
				location.reload();
			}else{
				alert("삭제실패");
			}
		}
	}
	http.open(method,url,true);
	http.send();
}
</script>