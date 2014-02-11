$(document).ready(function(){
	var s=$('#pager');
	for(i=1;i<39;i++)
		s[0].options[s[0].options.length]=new Option(i,i);
	$('#pager').onchange(function(){
		window.location.href="/kyc-mvc/web/ministers/list/"+$('#pager').val();		
	});
});