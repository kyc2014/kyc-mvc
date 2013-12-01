var infowindow;
function initialize(){
	var mapcanvas=document.getElementById("map");
	var mapopt= {center: new google.maps.LatLng(23.0000,78.0000),zoom:4,mapTypeId: google.maps.MapTypeId.ROADMAP};
	var mapcreate=new google.maps.Map(mapcanvas,mapopt);
	var fusiontable = new google.maps.FusionTablesLayer('1j2RT5lmo96Hp6RHaCEbv-WRXMKSM-2jNsV1pcEc', {suppressInfoWindows: true});
	fusiontable.setMap(mapcreate);
	google.maps.event.addListener(fusiontable,'click',function(event){
		if(infowindow!=null)
				infowindow.close();
			console.log(event);
		infowindow = new google.maps.InfoWindow({content: '<div id="constituencyName">Constituency No.:</strong>'+event.row['PC_CODE'].value + '<br>'+'<strong>State:</strong>'+event.row['ST_NAME'].value});
  		var marker = new google.maps.Marker({position: event.latLng});
        infowindow.setPosition(event.position); 
        infowindow.open(mapcreate,marker); 
		});
}
google.maps.event.addDomListener(window, 'load', initialize);
