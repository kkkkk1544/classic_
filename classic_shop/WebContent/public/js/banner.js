/**
 * 
 */

$(function(){
	$("#bannerCookie").click(function(){
		var cookieBanner = document.cookie.split(";");
		var isCookieBanner = false;
		for(var i=0; i<cookieBanner.length; i++){
			var key = cookieBanner[i].split("=")[0].trim();
			if(key=="bannerName"){
				isCookieBanner = true;
			}
		}
		if(!isCookieBanner){
			var popupBanner = window.open("view/banner/openPop.html","_blank","top=100 left=200 width=400 height=400");
			var now = new Date();
			now.setTime(now.getTime()+(1000*60*60*24*1));
			function setBanner(){
				document.cookie = "bannerName=1;"+now.toUTCString()+";"
				popupBanner.close();
			}
		}
	});
});