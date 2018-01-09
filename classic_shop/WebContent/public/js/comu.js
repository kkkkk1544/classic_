/**
 * 
 */
//faq List
$( function() {
  $( "#faqAccordion" ).accordion({
    collapsible: true
  });
});

//Notice List
var noticeListBtn = function(){
	location.href="/classic_shop/community/notice.do";
}
//Notice Detail
function readNotice(num){
	var setting={
			url: "/classic_shop/noticeDetail.do?num="+num,
			data: "GET",
			dataType: "json",
			success: function(data){
				console.log(data);
				$("#notice_read table").hide();
				$(".comu_paging").hide();
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
				$("#notice_read").html(notice_contents);
				var $div = $("<div class='notice_list_btn'></div>");
				$('#notice_read').after($div);
				$("<button type='button' class='btn btn-default' onclick='noticeListBtn()'>목록</button>").appendTo(".notice_list_btn");
			}
	}
	$.ajax(setting);
}

//qnaListBtn
var qnaListBtn = function(){
	location.href="/classic_shop/community/qna.do";
}

//qnaSecureCheck
$(function(){
	var qnaSecureOpen = function(secure){
		if(secure==1){
			window.open('/classic_shop/comu/qna/securePassword.html','_blank','width=350 height=200');
		}else{
			readQna();
		}
	}
});

//readQna
var readQna = function(num){
	var setting={
			url: "/classic_shop/qna/ajax.do?num="+num,
			data: "GET",
			dataType: "json",
			success: function(data){
				console.log(data);
				var qna_contents="";
				$(data).each(function(index, item){
					qna_contents+="<table class='table table-condensed'>";
					qna_contents+="<tbody class='qna_title'>";
					qna_contents+="<tr>";
					qna_contents+="<th>SUBJECT</th>";
					qna_contents+="<td id='subjectMsg'>"+qnaSubjectCheck(item.subject)+"</td>";
					qna_contents+="<th>NAME</th>";
					qna_contents+="<td>"+item.name+"</td>";
					qna_contents+="</tr>";
					qna_contents+="<tr>";
					qna_contents+="<th>DATE</th>";
					qna_contents+="<td>"+item.indate+"</td>";
					qna_contents+="<th>VIEW</th>";
					qna_contents+="<td>"+item.count+"</td>";
					qna_contents+="</tr>";
					qna_contents+="</tbody>";
					qna_contents+="</table>";
					qna_contents+="<table class='table table-bordered'>";
					qna_contents+="<tbody class='qna_contents'>";
					qna_contents+="<td>"+item.content+"</td>";
					qna_contents+="</tbody>";
					qna_contents+="</table>";
				});
				$("#qna_read").html(qna_contents);
				$("#qna_read table").hide();
				$(".comu_paging").hide();
				$(".qna_search").hide();
				$(".comu_insert_btn").hide();
				$(".qna_list_btn").show();
				$(".qna_btn_group").show();
				$(".qna_reply_form").show();
			/*	
				var $div = $("<div class='qna_list_btn'></div>");
				$('#qna_read').after($div);
				$("<button type='button' class='btn btn-default' onclick='qnaListBtn()' id='listTest'>목록</button>").appendTo(".qna_list_btn");
				$("<button type='button' class='btn btn-default' onclick='modifyQna("+data.num+")' id='modiTest'>수정</button>").after("#listTest");
				$("<button type='button' class='btn btn-default' onclick='removeQna("+data.num+")'>삭제</button>").after("#modiTest");*/
			}
	}
	$.ajax(setting);
}


//qna 글 제목 설정
var qnaSubjectCheck = function(subject) {
	if(subject==5){
		$("#subjectMsg").html("asd");
	} else{
		$("#subjectMsg").html("d");
	}
}

	var modifyQna = function(){
		location.href = "/classic_shop/comu/qna/modify.jsp";
	}

//qnaModify
/*var modifyQna = function(qnaPutForm){
	var urlSet = "qna/ajax.do";
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
}*/

/*//qnaDelete
 	var removeQna = function(num){
 		var setting={
 				url: "/classic_shop/qna/ajax.do="+num,
 				type: "DELETE",
 				dataType: "json",
 				success: function(data){
 					if(data["remove"]){
 						alert("삭제 성공");
 					} else{
 						alert("ㅠㅠ")
 					}
 				}
 		}
 		$.ajax(setting);
 	}*/
 	
/*//qnaInsert
var registerQna = function(registerForm){
	var url = "qna/ajax.do";
	var method = "POST";
	var num = registerForm.num.value;
	var subject = registerForm.subject.value;
	var content = registerForm.content.value;
	var secure = registerForm.secure.value;
	var pwd = registerForm.pwd.value;
	
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
}*/

