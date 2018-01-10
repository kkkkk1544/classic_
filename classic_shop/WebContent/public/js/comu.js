/**
 * 
 */

//faq List
$( function() {
  $( "#faqAccordion" ).accordion({
    collapsible: true
  });
});
//Notice Detail
function readNotice(num){
	var setting={
			url: "/classic_shop/notice/read.do?num="+num,
			data: "GET",
			dataType: "json",
			success: function(data){
				$(".notice_div table").hide();
				//$(".comu_paging").hide();
				var notice_contents="";
				$(data).each(function(index, item){
					notice_contents+="<table class='table table-condensed'>";
					notice_contents+="<tbody class='notice_read_title'>";
					notice_contents+="<tr>";
					notice_contents+="<th>TITEL</th>";
					notice_contents+="<td>"+item.title+"</td>";
					notice_contents+="<th>NAME</th>";
					notice_contents+="<td>"+item.name+"</td>";
					notice_contents+="</tr>";
					notice_contents+="<tr>";
					notice_contents+="<th>DATE</th>";
					notice_contents+="<td>"+item.indate+"</td>";
					notice_contents+="<th>VIEW</th>";
					notice_contents+="<td>"+item.count+"</td>";
					notice_contents+="</tr>";
					notice_contents+="</tbody>";
					notice_contents+="</table>";
					notice_contents+="<table class='table table-bordered'>";
					notice_contents+="<tbody class='notice_read_contents'>";
					notice_contents+="<td>"+item.content+"</td>";
					notice_contents+="</tbody>";
					notice_contents+="</table>";
				});
				$(".notice_div").html(notice_contents);
				//notice '목록' btn 추가
				var $div = $("<div id='noticeListBtnDiv'></div>");
				$('.notice_div').after($div);
				$("<button type='button' class='btn btn-default' onclick='noticeListBtn()'>목록</button>").appendTo("#noticeListBtnDiv");
			}
	}
	$.ajax(setting);
}
//Notice List
var noticeListBtn = function(){
	location.href="/classic_shop/community/notice.do";
}

//qnaListBtn
var qnaListBtn = function(){
	location.href="/classic_shop/community/qna.do";
}

/*
 var secureNum = document.getElementById("qnaSecureNum").value;
	if(secureNum=="1"){ //비공개글
		window.open('/classic_shop/comu/qna/securePassword.html','_blank','width=350 height=200');
	} else if(secureNum=="0"){
 * */

/*	var secureCheck = function(num){
		var secureNum = num;
		if(secureNum==0){
			readQna();
		}else{
			window.open('/classic_shop/comu/qna/securePassword.html','_blank','width=350 height=200');
		}
	}*/

//qnaDelete
var removeQna = function(num){
	var removeNum = num;
	var setting={
			url: "/classic_shop/qna/readRemove.do?num="+removeNum,
			type: "DELETE",
			dataType: "json",
			success: function(data){
				if(data["remove"]){
					alert("삭제 성공");
					location.href="/classic_shop/community/qna.do";
				} else{
					alert("ㅠㅠ")
				}
			}
	}
	$.ajax(setting);
}

//readQna
var readQna = function(num){
	var setting={
			url: "/classic_shop/qna/readRemove.do?num="+num,
			data: "GET",
			dataType: "json",
			success: function(data){
				console.log(data);
				$("#qna_read table").hide(); //qnaList Form hide
				$(".comu_paging").hide(); //qnaList Paging hide
				$(".qna_search").hide(); //qnaList Search hide
				$(".comu_insert_btn").hide(); //qnaList '문의하기' btn hide
				var qna_contents="";
				$(data).each(function(index, item){
					qna_contents+="<table class='table table-condensed'>";
					qna_contents+="<tbody class='qna_title'>";
					qna_contents+="<tr>";
					qna_contents+="<th class='col-sm-1'>SUBJECT</th>";
					qna_contents+="<td class='col-sm-6'>"+subjectName(item.subject)+"</td>";
					qna_contents+="<th class='col-sm-1'>NAME</th>";
					qna_contents+="<td class='col-sm-6'>"+item.name+"</td>";
					qna_contents+="</tr>";
					qna_contents+="<tr>";
					qna_contents+="<th class='col-sm-1'>DATE</th>";
					qna_contents+="<td class='col-sm-6'>"+item.indate+"</td>";
					qna_contents+="<th class='col-sm-1'>VIEW</th>";
					qna_contents+="<td class='col-sm-6'>"+item.count+"</td>";
					qna_contents+="</tr>";
					qna_contents+="</tbody>";
					qna_contents+="</table>";
					qna_contents+="<table class='table table-bordered'>";
					qna_contents+="<tbody class='qna_contents'>";
					qna_contents+="<td>"+item.content+"</td>";
					qna_contents+="</tbody>";
					qna_contents+="</table>";
				}); //forEach END
				$("#qna_read").html(qna_contents);
				//qna detail Btn Element 추가
				$(".table-div").after("<div class='qna_btn_group' align='right'></div>");
				$("<button type='button' class='btn btn-default' onclick='modifyQnaForm("+data.num+")''>수정</button>").appendTo(".qna_btn_group");
				$("<button type='button' class='btn btn-default' onclick='removeQna("+data.num+")''>삭제</button>").appendTo(".qna_btn_group");
				$(".table-div").after("<div class='qna_list_btn' align='left'></div>");
				$("<button type='button' class='btn btn-default' onclick='qnaListBtn()'>목록</button>").appendTo(".qna_list_btn");
				//qna detail Reply Form 추가
				$(".qna_btn_group").after("<div class='qna_reply_form'></div>");
				$("<table class='table table-bordered qna-reply'></table>").appendTo(".qna_reply_form");
				$("<tr></tr>").appendTo(".qna-reply");
				$("<th class='col-sm-2' id='qnaReplyId'>작성자</th>").appendTo(".qna-reply>tr");
				$("<td>댓글 내용</td>").appendTo(".qna-reply>tr");
			}//success END
	}//setting END
	$.ajax(setting);
	var subjectName = function(subject_num){ //subject set
	var subjectNum = subject_num;
	var subjectStr;
	if(subjectNum==0){
		subjectStr="상품 문의";
	}else if(subjectNum==1){
		subjectStr="배송 문의";
	}else if(subjectNum==2){
		subjectStr="배송 전 변경";
	}else if(subjectNum==3){
		subjectStr="입금 문의";
	}else if(subjectNum==4){
		subjectStr="교환/환불 문의";
	}else if(subjectNum==5){
		subjectStr="기타 문의";
	}
		return subjectStr;
	}
}
/*
//qnaModify
var modifyQnaForm = function(num){
	var modifyNum = num;
	location.href="/classic_shop/community/qna/modify.do?num="+modifyNum;
	return modifyNum;
}

var modifyQna = function(qnaModifyForm){
	var urlSet = "/classic_shop/community/qna/modify.do?num="+modifyNum;
	var method = "PUT";
	var num = qnaPutForm.num.value;
	var subject = qnaPutForm.subject.value;
	var content = qnaPutForm.content.value;
	var secure = qnaPutForm.secure.value;
	var pwd = qnaPutForm.pwd.value;
	var http = new XMLHttpRequest();
	var url = urlSet+"?num="+num+"&subject="+subject+"&content="+content+"&secure="+secure+"&pwd="+pwd;
	http.open(method, url, true);
	http.onreadystatechange = function(){
		if(this.readyState==4 && this.status==200){
			var modifyVal = JSON.parse(this.responseText)["modify"];
			if(modifyVal){
				alert("수정 성공");
			} else {
				alert("수정 실패");
			}
		}
	}
	http.send();
}
*/
//qnaInsert
var registerQna = function(qnaRegisterForm){
	var url = "community/qna/action.do";
	var method = "POST";
	var num = qnaRegisterForm.num.value;
	var subject = qnaRegisterForm.subjectValue.value;
	var content = qnaRegisterForm.qnaContents.value;
	var secure = qnaRegisterForm.secure.value;
	var pwd = qnaRegisterForm.pwd.value;
	
	var data = "num="+num+"&subject="+subject+"&content="+content+"&secure="+secure+"&pwd="+pwd;
	
	var http = new XMLHttpRequest();
	http.open(method, url, true);
	http.onreadystatechange = function(){
		if(this.readyState==4 && this.status==200){
			var register = JSON.parse(this.response)["register"];
			if(register){
				alert("성공");
			}else{
				alert("실패");
			}
		}
	}
	
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	http.send(data);
}

