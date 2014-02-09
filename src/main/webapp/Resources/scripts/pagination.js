$(document).ready(function(){
		pageno=window.location.href;
		for(j=pageno.length;j>0;j--)
			if(pageno.charAt)
		$("#pager").find("ul li:nth-child:(4)").find("a").attr("href","/web/ministers/list/"+pageno);
});