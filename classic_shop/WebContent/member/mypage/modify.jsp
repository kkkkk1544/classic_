<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="member_body">
	<div class="container">
		<h2 id="memberModifyTitle">MEMBER MODIFY</h2>
		<small style="color: red; float: right;">*필수</small>
		<!-- 회원수정 폼 -->
		<form class="form-horizontal modify_Form">
			<div class="form-group">
				<label class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-6">
					<p class="form-control-static">member1</p>
				</div>
			</div>
			<div class="form-group">
				<label for="InputPassword" class="col-sm-2 control-label">비밀번호<small style="color: red;">*</small></label>
				<div class="col-sm-3">
					<input type="password" class="form-control " id="inputPassword" placeholder="비밀번호">
				</div>
					<span id="modifyPasswordRule">비밀번호는 영문, 숫자, 특수문자만 사용 가능합니다</span>
			</div>
			<div class="form-group">
				<label for="InputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인<small style="color: red;">*</small></label>
				<div class="col-sm-3">
					<input type="password" class="form-control " id="InputPasswordCheck" placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhoneNumber" class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-3">
					<input type="tel" class="form-control" id="inputPhoneNumber" placeholder="연락처">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-6">
					<p class="form-control-static">member1@ggg.com</p>
				</div>
			</div>
			<div class="modify_btn_group">
				<button class="btn btn-default" type="button">수정</button>
				<button class="btn btn-default" type="button">취소</button>
			</div>
		</form>
	</div>
</div>