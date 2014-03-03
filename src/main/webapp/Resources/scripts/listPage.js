$(".Box").click(function(){
	var name = $(this).data('name');
	// Create URL from name 
	var url = "/web/minister/q/"+name ;
	showDialog(url);
});
$(".modalBg .contentWrapper").click(function(e){e.stopPropagation();e.preventDefault();})
$(".modalBg .closepopupButton,.modalBg").click(function(){
	closepopup();
});

function showDialog(url){
	$(".modalBg").show();
	$(".modalBg .contentBox").addClass('loading');
	$(".modalBg .contentBox").load(escape(url) , function(){
		$(".modalBg .contentBox").removeClass('loading');
	});
	var h = $(window).height();
	$(".modalBg .contentWrapper").css({
		marginTop : 25 
	});
	$(".modalBg .contentBox").css({
		height : h-50 ,		
	})
	$(document).on("keyup.escapeListener",function(e){
		if(e.keyCode == 27) {
			closepopup();
		}
	});
}

function closepopup(){
	$(document).off("keyup.escapeListener");
	$(".modalBg").hide();
}


