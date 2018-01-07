/**
 * 
 */

$(function(){
	$("#joinBtn").click(function(){
		location.href="/classic_shop/signup.do";
	});
});

var joinCancelBtn = function(){
	location.href="/classic_shop/index.jsp";
}

/*//id 유효성 검사
$("#memIdInput").keyup(function(){
	var idVal = $(this).val();
	var idStrCheck = /^[a-z]{1}[a-zA-Z0-9_]$/; //정규식 이상해
	var idStrFlag = false;
	if(idVal.length < 4 || idVal.length > 12){
		$("#checkIdMsg").html("아이디는 4자 이상, 12자 이하여야 합니다.").css("color","red");
		console.log(idStrFlag);
	} else if(idStrCheck.test(idVal)){ //true == 정규식 규칙 벗어남 //false == 정규식 규칙 지킴
		$("#checkIdMsg").html("아이디는 영문/숫자/_로 구성, 첫글자는 영문만 사용 가능합니다.").css("color","red");
		console.log(idStrFlag);
	} else{
		console.log(idStrFlag);
		$("#checkIdMsg").html("");
		var setting={
				url: "/classic_shop/signup/checkId.do?id="+idVal,
				type: "GET",
				dataType: "json",
				success: function(data){
					if(data.checkIdMsg){
						$("#checkIdMsg").html("사용 가능한 아이디입니다.").css("color","blue");
					}else{
						$("#checkIdMsg").html("사용 불가능한 아이디입니다.").css("color","red");
					}
				}
	}
	$.ajax(setting);
	}
});*/

//pwd 유효성 검사
/*$("#memPwInput").keyup(function(){
	var pwVal = $(this).val();
	//var pwStrCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{4,12}$/;
});*/

/*$("#memPwCheckInput").keyup(function(){
	var pwValCheck = $(this).val();
	if(pwVal.test(pwValCheck)){
		$("#checkPwMsg").html("비밀번호가 일치하지 않습니다.").css("color","red");
	} else{
		$("#checkPwMsg").html("비밀번호가 일치합니다.").css("color","blue");
	}
});*/

//이메일 유효성 검사

//이용약관 유효성 검사
/*$("#userAgreeAllCheck").change(function(){
	$("#userAgreeAllCheck").prop("checked");
	console.log("#userAgreeAllCheck");
});*/

/*//회원가입
$(function(){
$("#joinSubmitBtn").click(function(){
	var setting={
			url: "/classic_shop/memjoin.do",
			type: "POST",
			dataType: "json",
			success: function(data){
				console.log(data);
				if(data["register"]){
					alert("환영");
				}else{
					alert("ㅠㅠ");
				}
				location.href="/classic_shop/index.jsp";
			}
	}
	$.ajax(setting);
});
});*/

var url = "join.do";
var joinJson = function(joinForm){
	var method = "POST";
	var id = joinForm.id.value;
	var pw = joinForm.pw.value;
	var phone = joinForm.phone.value;
	var mail = joinForm.mail.value;
		var data = "id="+id+"&pw="+pw+"&phone="+phone+"&mail="+mail;
		console.log(data+"data");
		var http = new XMLHttpRequest();
		http.open(method, url, true);
		http.onreadystatuechange=function(){
			if(this.readyState==4 && this.status==200){
				console.log(data+"data");
				var register = JSON.parse(this.response)["register"];
				console.log(register+"dddd");
				alert("?????");
				if(register){
					console.log(register);
					alert("환영");
				}else{
					alert("가입 실패");
				}
			}
		}
		http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		http.send(data);	
}

