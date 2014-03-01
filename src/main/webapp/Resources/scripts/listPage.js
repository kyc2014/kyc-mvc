$(".Box").click(function(){
	var name = $(this).data('name');
	// Create URL from name 
	var url = "/web/minister/q/"+name ;
	showDialog(url);
});

function showDialog(url){
	$(".modalBg").show();
	$(".modalBg .contentBox").addClass('loading');
	$(".modalBg .contentBox").load(escape(url) , function(){
		$(".modalBg .contentBox").removeClass('loading');
	});
	var h = $(window).height();
	$(".modalBg .contentBox").css({
		marginTop : 25 ,
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


