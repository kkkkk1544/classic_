<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>

<div class="comu_body">
	<p class="comu_title">NOTICE</p>
		<div class="table-responsive">
			<table class="table table-condensed">
				<tr>
					<th>TITLE</th>
					<td>교환 및 환불양식</td>
					<th>NAME</th>
					<td>testMember</td>
				</tr>
				<tr>
					<th>DATE</th>
					<td>2017-12-30</td>
					<th>VIEW</th>
					<td>0</td>
				</tr>
			</table>
			<table class="table table-bordered">
				<tr>
					<td>반품 시 주의사항<br>반품 접수는 수령 당일부터 7일 이내(주말,공휴일 포함)로 하셔야 합니다.</td>
				</tr>
			</table>
			</div>
		<div class="notice_list_btn">
			<button type="button" class="btn btn-default" onclick="location.href='<c:url value='/comu/notice/list.jsp'/>'">목록</button>
		</div>
</div>