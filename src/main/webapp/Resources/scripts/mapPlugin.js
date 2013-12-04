var infowindow;
function initialize(){	
	var mapcanvas=document.getElementById("map");
	var geo = new google.maps.Geocoder();
	var address=$('#constituency').val();
	var code=$('#ccode').val();
	var myLatLng;
geo.geocode({'address':address},function(results, status){
    if (status == google.maps.GeocoderStatus.OK) {              
        myLatLng = results[0].geometry.location;
        var mapopt= {center: new google.maps.LatLng(myLatLng.ob,myLatLng.pb),zoom:8};
    }
    else
    {
    	var mapopt= {center: new google.maps.LatLng(21,78),zoom:4};
    }
        
		var mapcreate=new google.maps.Map(mapcanvas,mapopt);
		layer = new google.maps.FusionTablesLayer({
  query: {
    select: 'geometry',
    from: '1j2RT5lmo96Hp6RHaCEbv-WRXMKSM-2jNsV1pcEc',
    where: "PC_CODE = '"+code+"'"
    },suppressInfoWindows:true,styles: [{
    polygonOptions: {
      fillColor: "#ffcc00",
      fillOpacity: '0.8',
      strokeColor: "#ffffff",
      strokeOpacity: '0.8'
    }
  }]});
	layer.setMap(mapcreate);
	google.maps.event.addListener(layer,'click',function(event){
		if(infowindow!=null)
			infowindow.close();
		infowindow = new google.maps.InfoWindow({content: '<div id="constituencyName">Constituency No.:</strong>'+event.row['PC_CODE'].value + '<br>'+'<strong>State:</strong>'+event.row['ST_NAME'].value});
  		var marker = new google.maps.Marker({position: event.latLng});
        infowindow.setPosition(event.position); 
        infowindow.open(mapcreate,marker); 
		});
	});
	}
	

