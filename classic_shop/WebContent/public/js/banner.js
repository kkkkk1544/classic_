/**
 * 
 */

/*var cookies = document.cookie.split(";");
var isBannerCookie = false;
for(var i=0; i<cookies.length; i++){
	var key = cookies[i].split("=")[0].trim();
	if(key=="bannerCookie"){
		isBannerCookie = true;
	}
}
if(!isBannerCookie){
	var bannerOpen = window.open('/classic_shop/view/banner/openPop.html','_blank','top=100,left=200,width=400,height=400');
	var now = new Date();
	now.setTime(now.getTime()+(1000*60*60*24*1));
	function setBanner(){
		document.cookie = "bannerCookie=1;"+now.toUTCString()+";";
		bannerOpen.close();
	}
	var bannerScript = "javascript:opener.parent.setBanner();";
}*/