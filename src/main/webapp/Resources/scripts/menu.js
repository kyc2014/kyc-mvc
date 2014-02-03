$(function(){
$('#assemblyCandidatesBox').hide();
$('#menuList li:nth-child(2)').add('#assemblyCandidatesBox').hover(function(){$('#assemblyCandidatesBox').show()},function(){$('#assemblyCandidatesBox').hide()});
});