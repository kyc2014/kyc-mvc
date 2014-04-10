<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Election Memory Game | Know Your Candidate</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/Resources/CSS/style1.css" media="screen and (device-height:900px)" rel="stylesheet" type="text/css" />
<link href="/Resources/CSS/style2.css" media="screen and (device-height:768px) and (device-width:1366px)" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta lang="en-US" content="India General Elections 2014 Timetable - Schedule" name="description">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/generic2.css"/>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<style type="text/css">
@media screen and (max-width: 960px) 
{
   @import url('/Resources/CSS/style1.css');
   @import url('/Resources/CSS/style2.css');
}
</style>
<script type="text/javascript">
var score;
var mem_arr = ['/Resources/leader/1.png','/Resources/emblem/1.png','/Resources/leader/2.png','/Resources/emblem/2.png','/Resources/leader/3.png','/Resources/emblem/3.png','/Resources/leader/4.png','/Resources/emblem/4.png','/Resources/leader/5.png','/Resources/emblem/5.png','/Resources/leader/6.png','/Resources/emblem/6.png','/Resources/leader/7.png','/Resources/emblem/7.png','/Resources/leader/8.png','/Resources/emblem/8.png','/Resources/leader/9.png','/Resources/emblem/9.png','/Resources/leader/10.png','/Resources/emblem/10.png','/Resources/leader/11.png','/Resources/emblem/11.png','/Resources/leader/12.png','/Resources/emblem/12.png'];
var mem_val = [];
var mem_tile_id = [];
var tiles_flipped = 0;
Array.prototype.mem_tile_shuffle = function(){
	var i = this.length, j, temp;
	while(--i > 0){
		j = Math.floor(Math.random()*(i+1));
		temp = this[j];
		this[j] = this[i];
		this[i] = temp;	
	}
}
function newBoard(){
	tiles_flipped = 0;
	var output = '';
	mem_arr.mem_tile_shuffle();
	for(var i=0;i<mem_arr.length;i++){
		output += '<div id="tile_'+i+'" onclick="memFlipTile(this,\''+mem_arr[i]+'\')"></div>';
		console.log(i);
		console.log(mem_arr[i]);
	}
	document.getElementById('memory_board').innerHTML = output;
}
function memFlipTile(tile,val){
		if(tile.innerHTML == "" && mem_val.length<2){
			tile.style.background = 'url("'+val+'") no-repeat';
			tile.style.backgroundSize = 'cover';
			//tile.innerHTML = val;
			if(mem_val.length==0){
				mem_val.push(val.substring(7));
				mem_tile_id.push(tile.id);	
			}else if(mem_val.length==1){
				mem_val.push(val.substring(7));
				mem_tile_id.push(tile.id);
				if(mem_val[0]==mem_val[1]){
					tiles_flipped += 2;
					//clear both arrays
					mem_val = [];
					mem_tile_id = [];
					
				} else {
					function flipBack(){
						var tile_1 = document.getElementById(mem_tile_id[0]);
						var tile_2 = document.getElementById(mem_tile_id[1]);
						tile_1.style.background = 'url(/Resources/images/fb_kyc.png) no-repeat';
						tile_1.style.backgroundSize = 'cover';
						tile_1.innerHTML = "";
						tile_2.style.background = 'url(/Resources/images/fb_kyc.png) no-repeat';
						tile_2.style.backgroundSize = 'cover';
						tile_2.innerHTML = "";
						//clear arrays
						mem_val = [];
						mem_tile_id = [];
					}
					setTimeout(flipBack,700);
				}
			}
		}
}
function countSecs(secs,el){
	document.getElementById('desc').style.display = "block";
	var game = document.getElementById('memory_board').style.display = "block";
	var e = document.getElementById(el);
	e.innerHTML = secs;
	if(secs<1){
		e.style.display = "none";
		Alert.render("Time's Up....","Sorry, You've LOST!!!!");
		return;
	}
	if(tiles_flipped==mem_arr.length){
		document.getElementById('min').style.display = "none";
		var res = "You've finished in "+score+" seconds!!!";
		Alert.render("Hurray...You've WON!!!",res);
		return;
	}
	score = 60-secs;
	secs--;
	var timer = setTimeout('countSecs('+secs+',"'+el+'")',1000);
}

function customAlert(){
	this.render = function(msgh,msgb){
		var winW = window.innerWidth;
		var winH = window.innerHeight;
		var dover = document.getElementById('dialogoverlay');
		var dialog = document.getElementById('dialog');
		dover.style.display = "block";
		dover.style.height = winH+"px";
		dialog.style.left = (winW/2) - (550 * 0.5)+"px";
		dialog.style.top = "200px";
		dialog.style.display = "block";
		document.getElementById('dialoghead').innerHTML = msgh;
		document.getElementById('dialogbody').innerHTML = msgb;
		document.getElementById('dialogfoot').innerHTML = '<a href=javascript:document.location.reload();>TRY AGAIN</a>';
	}
}
var Alert = new customAlert();
</script>
</head>
<jsp:include page="../header.jsp" />
<body>
<div id="wrapper">
<img src="/Resources/images/desc.png" id="desc" />
<div id="dialogoverlay"></div>
<div id="dialog">
	<div>
    	<div id="dialoghead"></div>
        <div id="dialogbody"></div>
        <div id="dialogfoot"></div>
    </div>
</div>
<div id="memory_board"></div>
<div id="min"></div>
<input type="button" id="btn" onClick="countSecs(60,'min');" />
<script type="text/javascript">newBoard();</script>
</div>
</body>
<jsp:include page="../footer.jsp" />
</html>
