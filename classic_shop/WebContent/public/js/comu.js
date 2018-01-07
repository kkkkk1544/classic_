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
var qnaSecureOpen = function(secure){
	if(secure==1){
		window.open('/classic_shop/comu/qna/securePassword.html','_blank','width=350 height=200');
	}else{
		readQna();
	}
}

//readQna
var readQna = function(num){
	var setting={
			url: "/classic_shop/qna/ajax.do?num="+num,
			data: "GET",
			dataType: "json",
			success: function(data){
				console.log(data);
				$("#qna_read table").hide();
				$(".comu_paging").hide();
				$(".qna_search").hide();
				$(".comu_insert_btn").hide();
				//$(".qna_list_btn").show();
				//$(".qna_btn_group").show();
				//$(".qna_reply_form").show();
				var qna_contents="";
				$(data).each(function(index, item){
					qna_contents+="<table class='table table-condensed'>";
					qna_contents+="<tbody class='notice_read_title'>";
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
					qna_contents+="<tbody class='notice_read_contents'>";
					qna_contents+="<td>"+item.content+"</td>";
					qna_contents+="</tbody>";
					qna_contents+="</table>";
				});
				$("#qna_read").html(qna_contents);
				var $div = $("<div class='qna_list_btn'></div>");
				$('#qna_read').after($div);
				$("<button type='button' class='btn btn-default' onclick='qnaListBtn()' id='listTest'>목록</button>").appendTo(".qna_list_btn");
				$("<button type='button' class='btn btn-default' onclick='modifyQna("+data.num+")' id='modiTest'>수정</button>").after("#listTest");
				$("<button type='button' class='btn btn-default' onclick='removeQna("+data.num+")'>삭제</button>").after("#modiTest");
			}
	}
	$.ajax(setting);
}

var qnaSubjectCheck = function(subject) {
	if(subject==5){
		$("#subjectMsg").html('<td>d</td>');
	} else{
		$("#subjectMsg").html("<td>dddd</td>");
	}
}

var modifyQna = function(num){
}

var removeQna = function(num){
	console.log(num);
}


