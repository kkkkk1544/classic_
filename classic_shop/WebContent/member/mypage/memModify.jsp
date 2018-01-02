<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="bodyContainer">
	<div class="wrapper">
		
		<!-- MY PAGE -->
		<div class="memberInfo">
			<div class="memberTitle">
				<h2>MEMBER MODIFY</h2>
			</div>
		</div>
		<div style="clear:both"></div>
		<div class="formstart">
			<form class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-10">
					<p class="form-control-static">member1</p>
				</div>
			</div>
			<div class="form-group">
				<label for="InputPassword1" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group">
				<label for="InputPassword2" class="col-sm-2 control-label">비밀번호 확인</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group">
				<label for="inputphone" class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" id="inputel" placeholder="연락처">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<p class="form-control-static">member1@ggg.com</p>
				</div>
			</div>
			<div class="form-group">
				<label for="inputaddr" class="col-sm-2 control-label">주소</label>
				<div class="col-sm-10">
					<input type="text" class="form-control addr1" id="inputaddrt" placeholder="우편번호">						
					<button class="btn btn-default" type="button">우편번호 찾기</button>
					<input type="text" class="form-control" id="inputaddrt" placeholder="기본주소">
					<input type="text" class="form-control" id="inputaddrt" placeholder="상세주소">
				</div>
			</div>
			<div class="edit">
				<button class="btn btn-default oxbtn" type="button">수정</button>
				<button class="btn btn-default oxbtn" type="button">취소</button>
			</div>
			</form>
		</div>
	</div>
</div>