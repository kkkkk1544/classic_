<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/order.css' />">
<script src="<c:url value='/public/js/order.js'/>"></script>
</head>
<body>
<div class="order_list_body">
	<div id="contents">
		<h2 id="orderlistTitle">ORDER LIST</h2>
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
					<!-- <th>처리상태(통합)</th> 이것만 남길 예정
					<th>주문상태</th> 테스트 후 삭제예정  -->
					<th>배송상태</th> <!-- 테스트 후 삭제예정  -->
					<th>선택</th>
				</tr>
			</tbody>
			<tbody>
				<c:forEach items="${orderList}" var="list">
					<tr>
						<td><a href="<c:url value='/view/order/detail.jsp'/>">${list.order_num}</a></td>
						<td><a href="<c:url value='/product/detail.do?num=${list.num}' />">${list.g_name}</a></td>
						<td>1(임시)</td>
						<td>${list.payment}</td>
						<%-- <!-- 처리상태 (통합) 최종 결과물 -->
						<td>
							<c:if test="${list.order_state==-2 && list.deliv_state==0}">주문취소</c:if>
							<c:if test="${list.order_state==-1 && list.deliv_state==0}">교환/반품</c:if>
							<c:if test="${list.order_state==0 && list.deliv_state==0}">배송준비</c:if>
							<c:if test="${list.order_state==1 && list.deliv_state==0}">배송준비</c:if>
							<c:if test="${list.order_state==2 && list.deliv_state==0}">배송준비</c:if>
							<c:if test="${list.order_state==1 && list.deliv_state==1}">배송중</c:if>
							<c:if test="${list.order_state==1 && list.deliv_state==2}">배송완료</c:if>
							<c:if test="${list.order_state==2 && list.deliv_state==2}">배송완료</c:if>
							<c:if test="${list.order_state==3 && list.deliv_state==3}">수취확인</c:if>
							<c:if test="${list.order_state==2 && list.deliv_state==3}">수취확인</c:if>
							<c:if test="${list.order_state==1 && list.deliv_state==3}">수취확인</c:if>
							<!-- 있을 수 없는 상태...테스트데이터 미쓰테이쿠.. 업뎃으로 바꿧는데 왜 적용 안되G-->
							<c:if test="${list.order_state==0 && list.deliv_state==1}">오류오류ㅠ_ㅠ</c:if>
							<c:if test="${list.order_state==0 && list.deliv_state==2}">DB업뎃했는데?</c:if>
							<c:if test="${list.order_state==0 && list.deliv_state==3}">왜안바뀜....</c:if>
						</td>
						
						<!-- 테스트 후 삭제예정 -->
						<td><!-- 주문상태 검사 order_state상태 확인 -->
							<c:if test="${list.order_state==-2}">${list.order_state}주문취소</c:if>
							<c:if test="${list.order_state==-1}">${list.order_state}교환/반품</c:if>
							<c:if test="${list.order_state==0}">${list.order_state}결제대기</c:if>
							<c:if test="${list.order_state==1}">${list.order_state}결제완료</c:if>
							<c:if test="${list.order_state==2}">${list.order_state}주문확인</c:if>
							<c:if test="${list.order_state==3}">${list.order_state}주문완료</c:if>
						</td> --%>
						<!-- 테스트 후 삭제예정 -->
						<td><!-- 배송상태 검사 -->
							<c:if test="${list.deliv_state==0}">배송준비</c:if>
							<c:if test="${list.deliv_state==1}">배송중<br>(송장번호:${list.deliv_num})</c:if>
							<c:if test="${list.deliv_state==2}">배송완료</c:if>
							<c:if test="${list.deliv_state==3}">수취확인</c:if>
							
						</td>
						<!-- 배송상태에 따른 버튼 출력 0배송준비 1배송중 2배송완료 3수취확인 -->
						<%-- <td>
						<c:choose>
						
							<c:when test="${list.order_state==-2}">
								<p>취소 주문건</p>						
							</c:when>
							<c:when test="${list.order_state==-2}">
								<p>취소 주문건</p>						
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-default">주문취소</button>
							</c:otherwise>
						
						</c:choose>
						</td> --%>
						<c:if test="${list.deliv_state==0}">
							<td>
							<c:choose>
								<c:when test="${list.order_state==-2}">
									<p style="color:red;">주문 취소건</p>
								</c:when>
								<c:when test="${list.order_state==-1 && list.deliv_state==2}">
									<p style="color:red;">교환/반품건</p>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-default">주문취소</button>
								</c:otherwise>
							</c:choose>
							
							</td>
						</c:if> <!-- 주문취소하면 버튼 사라져야 함 --> 
						
						<c:if test="${list.deliv_state==1}">
							<td>
								<button type="button" class="btn btn-default" 
									onclick="window.open('https://www.doortodoor.co.kr/parcel/pa_004.jsp','CJ대한통운 배송조회','width=430,height=550,location=no,status=no,scrollbars=yes');">
										배송조회
								</button><br>
								<button type="button" class="btn btn-default">수취확인</button>
							</td>
						</c:if>
						<c:if test="${list.order_state==1 && list.deliv_state==2}">
							<td>
								<button type="button" class="btn btn-default">수취확인</button><br>
								<button type="button" class="btn btn-default">리뷰작성</button><br>
								<button type="button" class="btn btn-default">교환/반품</button>
							</td>
						</c:if>
						<c:if test="${list.deliv_state==3}">
							<td>
								<button type="button" class="btn btn-default">리뷰작성</button>
							</td>
						</c:if>
						
					</tr>
				</c:forEach>		
			</tbody>
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