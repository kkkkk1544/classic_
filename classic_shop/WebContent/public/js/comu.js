/**
 * 
 */
////////////////////////////////////////////////////////////////////////////////NOTICE 시작
var noticeList = function(){
	//NOTICE LIST
	var setting={
		url: "/classic_shop/notice.do",
		type: "GET",
		dataType: "json",
		success: function(data){
			console.log(data);
			var notice_contents="";
			$(data).each(function(index,item){
				notice_contents+="<tr>";
				notice_contents+="<td>"+item.num+"</td>";
				notice_contents+="<td><a href='javascript:readNotice(item.num)' class='comu_title_a'>"+item.title+"</a></td>";
				notice_contents+="<td>"+item.name+"</td>";
				notice_contents+="<td>"+item.indate+"</td>";
				notice_contents+="<td>"+item.count+"</td>";
				notice_contents+="</tr>";
			});
			$(".table_contents").html(notice_contents);
			$("#qnaBtnHide").hide();
			$("#qnaSearchForm").hide();
			$(".comu_title").html("NOTICE");
		}	
	}
	$.ajax(setting);
}

////////////////////////////////////////////////////////////////////////////////NOTICE 끝
////////////////////////////////////////////////////////////////////////////////QNA 시작
var qnaList = function(){
	//QNA LIST
	var setting={
		url: "/classic_shop/qna.do",
		type: "GET",
		dataType: "json",
		success: function(data){
			console.log(data);
			var qna_contents="";
			$("#qnaBtnHide").show();
			$("#qnaSearchForm").show();
			$(".comu_title").html("QNA");
			$(data).each(function(index,item){
				qna_contents+="<tr>";
				qna_contents+="<td>"+item.num+"</td>";
				qna_contents+="<td><a href='javascript:readQna(item.num)' class='comu_title_a'>"+item.subject+"</td>";
				qna_contents+="<td>"+item.name+"</td>";
				qna_contents+="<td>"+item.indate+"</td>";
				qna_contents+="<td>"+item.count+"</td>";
				qna_contents+="</tr>";
			});
			$(".table_contents").html(qna_contents);
		}
	}
	$.ajax(setting);
}

////////////////////////////////////////////////////////////////////////////////QNA 끝
////////////////////////////////////////////////////////////////////////////////FAQ 시작
var faqList = function(){
	//FAQ LIST
}
////////////////////////////////////////////////////////////////////////////////FAQ 끝
