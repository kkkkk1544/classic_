<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="order_list_body">
	<div id="contents">
		<h2 id="orderlistTitle">ORDER LIST</h2>
		<!-- <hr style="border:solid 2px black"> --><!-- 이거 지우고 border로 넣을게요 -->
		<!-- 다혜님 id="이름" class="이름" 동일한 게 있는데 이거 수정해주세요! 그리고 태그 자체 이름으로 css 하시면 모든 jsp에 걸려요
		무조건 id나 class로 이름 지어서 사용해주세요!  -->
		<div id="serchContents">
			<div class="searchDay">
				<div class="serchBtn">
			 	 	<button type="button" class="btn btn-default">오늘</button>
			 		<button type="button" class="btn btn-default">일주일</button>
			 		<button type="button" class="btn btn-default">1개월</button>
			 		<button type="button" class="btn btn-default">3개월</button>
			 		<button type="button" class="btn btn-default">6개월</button>	
		 		</div>
				<div class="searchCal">
					<!-- input 창 변경함(css도) -->
					<input type="text" name="startDate" value="" class="order_date_input">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
					</button> ~ 
					<input type="text" name="startDate" value="" class="order_date_input">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
					</button>
					<button class="btn btn-default">조회</button>
				</div>
			</div>
		</div>
	
		<div id="list"  class="table-responsive">
		  <table class="table table-hover">
		  	<tbody class="list_title">
			    <tr>
					<th>주문번호</th>
					<th>상품정보</th>
					<th>수량</th>
					<th>상품구매금액</th>
					<th>주문처리상태</th>
					<th>선택</th>
				</tr>
			</tbody>
			<tr>
				<td>
					<a href="<c:url value='/order/detail.jsp' />">
						order_num
					</a>
				</td> <!-- 주문번호 누르면 디테일로 -->
				<td>
					<img alt="images" src=""  align="left" hspace="10">
					<label><a href="#">상품명:product_name</a></label><br><!-- 상품명 누르면 상품상세정보로 -->
					[옵션]색상:color_name, 사이즈:product_sizu
				</td>
				<td>1</td>
				<td>order_money</td>
				<td>delivery_state:2배송완료</td>
				<td>
					<button type="button" class="btn btn-default">수취확인</button><br>
					<button type="button" class="btn btn-default">리뷰작성</button><br>
					<button type="button" class="btn btn-default">교환/반품</button>	
				</td>
			</tr>
			 <tr>
				<td><a href="#">order_num</a></td>
				<td>
					<img alt="" src=""  align="left" hspace="10">
					<label><a href="#">상품명:product_name</a></label><br>
					[옵션]색상:color_name, 사이즈:product_sizu
				</td>
				<td>2</td>
				<td>order_money</td>
				<td>delivery_state:0배송준비</td>
				<td><button type="button" class="btn btn-default">주문취소</button></td>
			</tr>
			<tr>
				<td><a href="#">order_num</a></td>
				<td>
					<img alt="" src="" align="left" hspace="10">
					<label><a href="#">상품명:product_name</a></label><br>
					[옵션]색상:color_name, 사이즈:product_sizu
				</td>
				<td>1</td>
				<td>order_money</td>
				<td>delivery_state:1배송중</td>
				<td>
					<button type="button" class="btn btn-default">송장번호 확인</button><br>
					<button type="button" class="btn btn-default">수취확인</button>
				</td>
			</tr>
			<tr>
				<td><a href="#">order_num</a></td>
				<td>
					<p>
						<img alt="" src=""  align="left" hspace="10">
						<label><a href="#">상품명:product_name</a></label><br>
						[옵션]색상:color_name, 사이즈:product_sizu
					</p>
					<p>
						<img alt="" src=""  align="left" hspace="10">
						<label><a href="#">상품명:product_name</a></label><br>
						[옵션]색상:color_name, 사이즈:product_sizu
					</p>
				</td>
				<td>
					<p>3</p>
					<p>1</p>
				</td>
				<td>order_money</td>
				<td>delivery_state:3수취확인</td>
				<td>
					<label>구매확정</label>
				</td>
			</tr>
		  </table>
		</div>
		<div id="listPage">
			<nav>
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
			</nav>
		</div>
	</div>
</div>