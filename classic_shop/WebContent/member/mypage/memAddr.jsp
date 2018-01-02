<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="bodyContainer">
	<div class="wrapper">
	
	<!-- ADRESS LIST -->
		<div class="memberInfo">
			<div class="memberTitle">
				<h2>ADRESS LIST</h2>
			</div>
			<table class="table">
				<thead>
					<tr class="trone">
						<th class="col-sm-1">
							<label>
								<input type="checkbox" id="blankCheckbox" value="option3" aria-label="checkbox">
							</label>
						</th>
						<th class="col-sm-1">No.</th>
						<th class="col-sm-3">주소</th>
						<th class="col-sm-1">연락처</th>
						<th class="col-sm-1">수령인</th>
						<th class="col-sm-1">상태</th>
					</tr>
				</thead>
				<tbody class="one">
					<tr>
						<td>
							<label>
								<input type="checkbox" id="blankCheckbox" value="option1" aria-label="checkbox">
							</label>
						</td>
						<td>1</td>
						<td>주소야주소</td>
						<td>010-2222-3333</td>
						<td>나야나</td>
						<td>상태</td>
					</tr>
				</tbody>
			</table>
			<div class="edit">
				<button class="btn btn-default" type="button">전체 선택</button>
				<button class="btn btn-default" type="button">선택 삭제</button>
				<button class="btn btn-default" type="button">주소 등록</button>
			</div>
		</div>
		<div style="clear:both"></div>
		
		<!-- RECENT ADDRESS -->
		<div class="orderInfo">
			<div class="orderTitle">
				<h2>RECENT ADDRESS</h2>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th class="col-sm-1">
							<label>
								<input type="checkbox" id="blankCheckbox" value="option1" aria-label="checkbox"></th>
							</label>
						<th class="col-sm-1">No.</th>
						<th class="col-sm-3">주소</th>
						<th class="col-sm-1">연락처</th>
						<th class="col-sm-1">수령인</th>
						<th class="col-sm-1">상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<label>
								<input type="checkbox" id="blankCheckbox" value="option1" aria-label="checkbox">
							</label>
						</td>
						<td>1</td>
						<td>주소야주소</td>
						<td>010-2222-3333</td>
						<td>나야나</td>
						<td>상태</td>
					</tr>
				</tbody>
			</table>
			<div class="edit">
				<button class="btn btn-default" type="button">전체 선택</button>
				<button class="btn btn-default" type="button">선택 삭제</button>
				<button class="btn btn-default" type="button">기본 주소로 등록</button>
			</div>
		</div>					
	</div>
</div>
