<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="member_body">
	<div class="container">
		<div class="address_wrap">
			<h2 class="addressBookTitle">ADDRESS BOOK</h2>
				<form>
					<div>
						<div class="boardWrite">
							<table class="table table-bordered addressBook_table">
								<tbody>
									<tr>
										<th scope="row">배송지명</th>
										<td>
											<div class="col-sm-3">
												<input type="text" name="addressBook" value="" class="form-control">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">성명</th>
										<td>
											<div class="col-sm-3">
												<input type="text" name="name" value="" class="form-control">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">주소</th>
										<td>
											<div class="zip_code_wrap">
												<div class="col-sm-3">
													<input type="text" name="" value="" class="form-control">
												</div>
												<button class="btn btn-default" type="button">우편번호</button>
											</div>
											
											<div class="addrbase_wrap">
												<div class="col-sm-5">
													<input type="text" name="" value="" class="form-control">
												</div>
											</div>

											<div class="addrdetail_wrap">
												<div class="col-sm-5">
													<input type="text" name="" value="" class="form-control">
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">일반전화</th>
										<td>
											<div class="col-sm-3">
												<input type="text" name="name" value="" class="form-control">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">휴대전화</th>
										<td>
											<div class="col-sm-3">
												<input type="text" name="name" value="" class="form-control">
											</div>
										</td>
									</tr>
									
									
									
									
								</tbody>
							
							</table>
						
						</div>
						<!-- -->
				
						<div class="modify_btn_group">
							<button class="btn btn-default" type="button">등록</button>
							<button class="btn btn-default" type="button" onclick="location.href='<c:url value='/member/mypage/address.jsp'/>'">취소</button>
						</div>
					</div>
				</form>
		</div>
	</div>
</div>