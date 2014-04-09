<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link href="style1.css" media="screen and (device-height:900px)" rel="stylesheet" type="text/css" />
<link href="style2.css" media="screen and (device-height:768px) and (device-width:1366px)" rel="stylesheet" type="text/css" />
<title>Memory game</title>
<style type="text/css">
@media screen and (max-width: 960px) 
{
   @import url('style1.css');
   @import url('style2.css');
}
</style>
<script type="text/javascript">
var score;
var mem_arr = ['leader/1.png','emblem/1.png','leader/2.png','emblem/2.png','leader/3.png','emblem/3.png','leader/4.png','emblem/4.png','leader/5.png','emblem/5.png','leader/6.png','emblem/6.png','leader/7.png','emblem/7.png','leader/8.png','emblem/8.png','leader/9.png','emblem/9.png','leader/10.png','emblem/10.png','leader/11.png','emblem/11.png','leader/12.png','emblem/12.png'];
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
						tile_1.style.background = 'url(images/fb_kyc.png) no-repeat';
						tile_1.style.backgroundSize = 'cover';
						tile_1.innerHTML = "";
						tile_2.style.background = 'url(images/fb_kyc.png) no-repeat';
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

<body>
<img src="images/desc.png" id="desc" />
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
</body>
</html>
