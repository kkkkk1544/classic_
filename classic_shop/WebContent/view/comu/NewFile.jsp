<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="xans-element- xans-board xans-board-write-4 xans-board-write xans-board-4">
	<div class="boardWrite ">
		<table width="100%" border="1" summary="">
			<tbody>
				<tr class="first">
					<th scope="row" class="thead txtLess">SUBJECT</th>
					<td>
						<select id="subject" name="subject" fw-filter="" fw-label="" fw-msg="">
							<option value="상품문의">상품문의</option>
							<option value="배송문의">배송문의</option>
							<option value="배송 전 변경">배송 전 변경</option>
							<option value="입금문의">입금문의</option>
							<option value="기타문의">기타문의</option>
						</select>
					</td>
				</tr>
				<!-- 여기에 글내용 쓸수있는 곳 있어야함 -->
			</tbody>
			<tbody class="attachfile ">
				<tr style="display: table-row;">
					<th scope="row" class="thead txtLess">FILE&nbsp;1</th>
					<td class="formFile"><input name="attach_file[]" type="file">
						<span class="attachabtnArea" style="display: none;">
							<a href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
						</span>
					</td>
				</tr>
				<tr style="display: table-row;">
					<th scope="row" class="thead txtLess">FILE&nbsp;2</th>
					<td class="formFile"><input name="attach_file[]" type="file">
						<span class="attachabtnArea" style="display: none;">
							<a href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i class="fa fa-minus"></i></a>
						</span>
					</td>
				</tr>
				<tr style="display: table-row;">
					<th scope="row" class="thead txtLess">FILE&nbsp;3</th>
					<td class="formFile"><input name="attach_file[]" type="file">
						<span class="attachabtnArea" style="display: inline;">
							<a href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i class="fa fa-minus"></i></a>
						</span>
					</td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">FILE&nbsp;4</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;5
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;6
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;7
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;8
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;9
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;10
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;11
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;12
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;13
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;14
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;15
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;16
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;17
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;18
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;19
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-add"><i class="fa fa-plus"></i></a>
							<a href="#none" class="attachfile-remove"><i
								class="fa fa-minus"></i></a>
					</span></td>
				</tr>
				<tr style="display: none;">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 첨부파일 or FILE
영  어 : ATTACHMENT
중국어 : 附件
일본어 : 添付ファイル
--> FILE&nbsp;20
					</th>
					<td class="formFile"><input name="attach_file[]" type="file"><span
						class="attachabtnArea" style="display: none;"> <a
							href="#none" class="attachfile-remove"><i class="fa fa-minus"></i></a>
					</span></td>
				</tr>
			</tbody>
			<tbody>
				<tr class="">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 비밀번호 or PASSWORD
영  어 : PASSWORD
중국어 : 密码
일본어 : パスワード
--> PASSWORD
					</th>
					<td><input id="password" name="password" fw-filter="isFill"
						fw-label="비밀번호" fw-msg="" value="" type="password"></td>
				</tr>
				<tr class="">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 비밀글설정 or SECRET
영  어 : PRIVATE SETTING
중국어 : 是否公开
일본어 : 秘密コメント設定
--> SECRET
					</th>
					<td><input id="secure0" name="secure" fw-filter="isFill"
						fw-label="비밀글설정" fw-msg="" value="F" type="radio"
						checked="checked" disabled=""><label for="secure0">공개글</label>
						<input id="secure1" name="secure" fw-filter="isFill"
						fw-label="비밀글설정" fw-msg="" value="T" type="radio"><label
						for="secure1">비밀글</label></td>
				</tr>
				<tr class="captcha displaynone">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 보안문자 or SECURITY CODE
영  어 : SECURITY CODE
중국어 : 验证码
일본어 : セキュリティテキスト
--> SECURITY CODE
					</th>
					<td>
						<p>
							<span class="securityCode"></span> <img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/ico_warning.gif"
								alt=""> 영문, 숫자 조합을 공백없이 입력하세요(대소문자구분)
						</p>
					</td>
				</tr>
				<tr class="agree displaynone">
					<th scope="row" class="thead txtLess">
						<!--
한국어 : 정보이용안내 or PRIVACY POLICY
영  어 : PRIVACY POLICY
중국어 : 隐私声明
일본어 : 個人情報保護方針
--> PRIVACY POLICY
					</th>
					<td><br> 개인정보 수집 및 이용에 동의하십니까?</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btnArea btnAreaCustom ">
		<span class="left"><a
			href="/board/product/list.html?board_no=6"
			class="btn Normal Medium Wnormal">
				<!--
한국어 : 목록
영  어 : LIST
중국어 : 目录
일본어 : リスト
--> 목록
		</a></span> <span class="left displaynone"><a href="#none" onclick=""
			class="btn Normal Light mL5"><i class="fa fa-cog fa-spin"></i>관리자답변보기</a></span>
		<a href="#none" onclick="BOARD_WRITE.form_submit('boardWriteForm');"
			class="btn Normal Dark Wnormal mL5">
			<!--
한국어 : 등록
영  어 : REGISTER
중국어 : 发表
일본어 : とうろく
--> 등록
		</a> <a href="/board/product/list.html?board_no=6"
			class="btn Normal Medium Wnormal mL5">
			<!--
한국어 : 취소
영  어 : CANCEL
중국어 : 取消
일본어 : キャンセル
--> 취소
		</a>
	</div>
</div>