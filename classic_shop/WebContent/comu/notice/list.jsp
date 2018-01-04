<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>
<div class="comu_body">
	<p class="comu_title">NOTICE</p>
		<div class="table-responsive">
			<table class="table table-hover">
				<tbody class="notice_title">
					<tr>
						<th>No.</th>
						<th>TITLE</th>
						<th>NAME</th>
						<th>DATE</th>
						<th>VIEW</th>
					</tr>
				</tbody>
				<tbody class="notice_contents">
					<tr>
						<td>1</td>
						<td><a href="<c:url value='/comu/notice/read.jsp' />">교환 및 환불양식</a></td>
						<td>testMember</td>
						<td>2017-12-30</td>
						<td>0</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="<c:url value='/comu/notice/read.jsp' />">설연휴 배송 지연 안내</a></td>
						<td>testMember</td>
						<td>2017-12-30</td>
						<td>0</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="<c:url value='/comu/notice/read.jsp' />">상품별 사이즈 측정</a></td>
						<td>testMember</td>
						<td>2017-12-30</td>
						<td>0</td>
					</tr>
					
				</tbody>
			</table>
		</div>
<!-- 페이징 -->
		<div class="comu_paging">
		  <ul class="pagination">
		  <tr>
		    <th>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </th>
		    <th><a href="#">1</a></th>
		    <th><a href="#">2</a></th>
		    <th><a href="#">3</a></th>
		    <th><a href="#">4</a></th>
		    <th><a href="#">5</a></th>
		    <th>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </th>
		    </tr>
		  </ul>
		  
		</div>
</div>