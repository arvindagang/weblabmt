function initMap(){
	var maryheights = {lat:16.411974, lng: 120.593384};
	
	var map1 = new google.maps.Map(document.getElementById('mapElec'), {
	zoom: 17,
	center: maryheights,
	});
	
	var map2 = new google.maps.Map(document.getElementById('mapWate'), {
	zoom: 17,
	center: maryheights,
	});
	
	var map3 = new google.maps.Map(document.getElementById('mapCabl'), {
	zoom: 17,
	center: maryheights,
	});
	
	var map4 = new google.maps.Map(document.getElementById('mapInte'), {
	zoom: 17,
	center: maryheights,
	});
	
	var map5 = new google.maps.Map(document.getElementById('mapGvnt'), {
	zoom: 17,
	center: maryheights,
	});
	
	initElectricityMap(map1);
	initWaterMap(map2);
	initInternetMap(map4);
		initCablesMap(map3);
	

	
}
// This is for the electric markers
function initElectricityMap(map1){
	
	var bdoSession = {lat:16.411725, lng: 120.598242};
	var bdoAbanao = {lat: 16.414061,lng: 120.594094};
	var chinaBank = {lat:16.418101,lng: 120.596366};
	var dbpBaguio = {lat:16.413478,lng: 120.595573};
	var eastrnBank = {lat:16.413120,lng: 120.596977};
	var landbank = {lat:16.413553,lng: 120.586989};
	var maharlikaLivehood = {lat:16.414160,lng: 120.594722};
	var pnb = {lat:16.413323, lng:120.596611};
	var portavaga = {lat:16.412445,lng: 120.598314};
	var metrobank = {lat:16.414998,lng: 120.595816};	
	var robinson = {lat:16.414499,lng: 120.597420};
	var smdeptstore = {lat:16.408777,lng: 120.599236};
	var benecoOfficeSD = {lat:16.405449,lng: 120.604056};
	var bpisession = {lat:16.412498,lng: 120.595893};
	var summitbank = {lat: 16.417188,lng: 120.595871};
	
	var marker1 = new google.maps.Marker({
	position: bdoSession,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE1 = '<h1>BDO Session</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE1,
          maxWidth: 200
    });
	
	marker1.addListener('click',  function() {
		infowindow.open(map1,marker1);
	});
	
	
	
	var marker2 = new google.maps.Marker({
	position: bdoAbanao,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE2 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE2,
          maxWidth: 200
    });
	
	marker2.addListener('click',  function() {
		infowindow.open(map1,marker2);
	});
	
	
	
	var marker3 = new google.maps.Marker({
	position: chinaBank,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE3 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE3,
          maxWidth: 200
    });
	
	marker3.addListener('click',  function() {
		infowindow.open(map1,marker3);
	});
	
	
	
	var marker4 = new google.maps.Marker({
	position: dbpBaguio,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE4 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE4,
          maxWidth: 200
    });
	
	marker4.addListener('click',  function() {
		infowindow.open(map1,marker4);
	});
	
	
	
	var marker5 = new google.maps.Marker({
	position: eastrnBank,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE5 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE5,
          maxWidth: 200
    });
	
	marker5.addListener('click',  function() {
		infowindow.open(map1,marker5);
	});
	
	
	
	var marker6 = new google.maps.Marker({
	position: landbank,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE6 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE6,
          maxWidth: 200
    });
	
	marker6.addListener('click',  function() {
		infowindow.open(map1,marker6);
	});
	
	
	
	var marker7 = new google.maps.Marker({
	position: maharlikaLivehood,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE7 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE7,
          maxWidth: 200
    });
	
	marker7.addListener('click',  function() {
		infowindow.open(map1,marker7);
	});
	
	
	
	var marker8 = new google.maps.Marker({
	position: pnb,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE8 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE8,
          maxWidth: 200
    });
	
	marker8.addListener('click',  function() {
		infowindow.open(map1,marker8);
	});
	
	
	
	var marker9 = new google.maps.Marker({
	position: portavaga,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE9 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE9,
          maxWidth: 200
    });
	
	marker9.addListener('click',  function() {
		infowindow.open(map1,marker9);
	});
	
	
	
	var marker10 = new google.maps.Marker({
	position: metrobank,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE10 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE10,
          maxWidth: 200
    });
	
	marker10.addListener('click',  function() {
		infowindow.open(map1,marker10);
	});
	
	
	
	var marker11 = new google.maps.Marker({
	position: robinson,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE11 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE11,
          maxWidth: 200
    });
	
	marker11.addListener('click',  function() {
		infowindow.open(map1,marker11);
	});
	
	
	
	var marker12 = new google.maps.Marker({
	position: smdeptstore,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE12 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE12,
          maxWidth: 200
    });
	
	marker12.addListener('click',  function() {
		infowindow.open(map1,marker12);
	});
	
	
	
	var marker13 = new google.maps.Marker({
	position: benecoOfficeSD,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE13 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE13,
          maxWidth: 200
    });
	
	marker13.addListener('click',  function() {
		infowindow.open(map1,marker13);
	});
	
	
	var marker14 = new google.maps.Marker({
	position: bpisession,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE14 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE14,
          maxWidth: 200
    });
	
	marker14.addListener('click',  function() {
		infowindow.open(map1,marker14);
	});
	
	
	
	var marker15 = new google.maps.Marker({
	position: summitbank,
	map: map1,
	icon: "styles/markers/electric.png"
	});
	
	var contentE15 = '<h1>BDO Abanao</h1>'+
					'<h2>Upper Session #69</h2>'+
					'<h4> You can pay:</h4>'+
					'<h4> Electricity</h4>'+
					'<h4> You can also pay water here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentE15,
          maxWidth: 200
    });
	
	marker15.addListener('click',  function() {
		infowindow.open(map1,marker15);
	});
	
}

function initWaterMap(map2){
	var bdoSessions = {lat:16.411725, lng: 120.598242};
	
	var marker1 = new google.maps.Marker({
	position: bdoSessions,
	map: map2,
	icon: "styles/markers/water.png"
	});
	
	var contentString = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker1.addListener('click',  function() {
		infowindow.open(map2,marker1);
	});
}

function initCablesMap(map3){
	 
	 var cabuppersession = {lat:16.411141,lng: 120.598844};
	 var cabhighway = {lat:16.397900,lng: 120.583088};
	 var cabbayadcenter = {lat: 16.413461,lng: 120.595648};
	 var cabbayanihanpnb = {lat:16.413303,lng: 120.592394};
	 var cabcebuana = {lat:16.414106,lng: 120.593327};
	 var cabsm = {lat:16.408403,lng: 120.599144};
	 var cabsession = {lat:16.413042,lng: 120.597081};
	 var cabbpi = {lat:16.412433,lng: 120.596027};
	 var cablegarda = {lat:16.410903,lng: 120.591220};
	 var cabassumption = {lat:16.415822,lng: 120.597785};
	 var cabmel = {lat:16.417791,lng: 120.596562};
	 var cablandbank = {lat:16.408285,lng: 120.600861};
	 
	 
	 var marker1 = new google.maps.Marker({
	position: cabassumption,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString1 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString1,
          maxWidth: 200
    });
	
	marker1.addListener('click',  function() {
		infowindow.open(map3,marker1);
	});
	
	var marker2 = new google.maps.Marker({
	position: cabbayadcenter,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString2 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString2,
          maxWidth: 200
    });
	
	marker2.addListener('click',  function() {
		infowindow.open(map3,marker2);
	});
	
	var marker3 = new google.maps.Marker({
	position: cabbayanihanpnb,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString3 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString3,
          maxWidth: 200
    });
	
	marker3.addListener('click',  function() {
		infowindow.open(map3,marker3);
	});
	
	var marker4 = new google.maps.Marker({
	position: cabbpi,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString4 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString4,
          maxWidth: 200
    });
	
	marker4.addListener('click',  function() {
		infowindow.open(map3,marker4);
	});
	
	var marker5 = new google.maps.Marker({
	position: cabcebuana,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString5 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString5,
          maxWidth: 200
    });
	
	marker5.addListener('click',  function() {
		infowindow.open(map3,marker5);
	});
	
	var marker6 = new google.maps.Marker({
	position: cabhighway,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString6 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString6,
          maxWidth: 200
    });
	
	marker6.addListener('click',  function() {
		infowindow.open(map3,marker6);
	});
	
	var marker7 = new google.maps.Marker({
	position: cablandbank,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString7 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString7,
          maxWidth: 200
    });
	
	marker7.addListener('click',  function() {
		infowindow.open(map3,marker7);
	});
	
	var marker8 = new google.maps.Marker({
	position: cablegarda,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString8 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString8,
          maxWidth: 200
    });
	
	marker8.addListener('click',  function() {
		infowindow.open(map3,marker8);
	});
	
	var marker9 = new google.maps.Marker({
	position: cabmel,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString9 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString9,
          maxWidth: 200
    });
	
	marker9.addListener('click',  function() {
		infowindow.open(map3,marker9);
	});
	
	var marker10 = new google.maps.Marker({
	position: cabsession,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString10 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString10,
          maxWidth: 200
    });
	
	marker10.addListener('click',  function() {
		infowindow.open(map3,marker10);
	});
	
	var marker11 = new google.maps.Marker({
	position: cabsm,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString11 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString11,
          maxWidth: 200
    });
	
	marker11.addListener('click',  function() {
		infowindow.open(map3,marker11);
	});
	
	var marker12 = new google.maps.Marker({
	position: cabuppersession,
	map: map3,
	icon: "styles/markers/cables.png"
	});
	
	var contentString12 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString12,
          maxWidth: 200
    });
	
	marker12.addListener('click',  function() {
		infowindow.open(map3,marker12);
	});
}

function initInternetMap(map4) {
	
	var pldtHighway = {lat:16.392713,lng: 120.579414};
	var pldtmidsession = {lat:16.413027,lng: 120.597059};
	var pldtbayanihan = {lat:16.413289, lng:120.594020};
	var pldtbdoAbanao = {lat: 16.414062,lng: 120.594094};
	var pldtbdoSession = {lat:16.411726, lng: 120.598242};
	var pldtuppersession = {lat:16.411195,lng: 120.598938};
	var pldtSM = {lat:16.408779,lng: 120.599236};
	

	var globebdoAbanao = {lat:16.414144,lng: 120.594265};
	var globebdoSession = {lat:16.411726,lng: 120.598316};
	var globeBPI = {lat:16.412496,lng: 120.595893};
	var globelandbank = {lat:16.413555,lng: 120.586989};
	var globePNB = {lat:16.413321, lng:120.596611};
	var globemetrobank = {lat:16.414951,lng: 120.595816};
	var globeSM = {lat:16.409501,lng: 120.599243};
	
	var sunSM = {lat:16.408777,lng: 120.599236};
	var sunBurnham = {lat:16.411964,lng: 120.593369};
	var sunBurn = {lat:16.415269,lng: 120.594488};
	var sunNaAko  = {lat:16.410828,lng: 120.594615};
	var sunBanda = {lat:16.411497,lng: 120.590652};
	var sunDikomahanap = {lat:16.413507,lng: 120.586883};
	var sunNayou = {lat:16.390835,lng: 120.600792};
	

	
	

	var marker1 = new google.maps.Marker({
	position: pldtHighway,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker1.addListener('click',  function() {
		infowindow.open(map4,marker1);
	});
	
	
	
	
	var marker2 = new google.maps.Marker({
	position: pldtmidsession,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString1 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString1,
          maxWidth: 200
    });
	
	marker2.addListener('click',  function() {
		infowindow.open(map4,marker2);
	});
	
	
	
	
	
	var marker3 = new google.maps.Marker({
	position: pldtbayanihan,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString2 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString2,
          maxWidth: 200
    });
	
	marker3.addListener('click',  function() {
		infowindow.open(map4,marker3);
	});
	
	var marker4 = new google.maps.Marker({
	position: pldtbdoAbanao,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString3 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString3,
          maxWidth: 200
    });
	
	marker4.addListener('click',  function() {
		infowindow.open(map4,marker4);
	});
	
	var marker5 = new google.maps.Marker({
	position: pldtbdoSession,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString4 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString4,
          maxWidth: 200
    });
	
	marker5.addListener('click',  function() {
		infowindow.open(map4,marker5);
	});
	
	var marker6 = new google.maps.Marker({
	position: pldtuppersession,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString5 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString5,
          maxWidth: 200
    });
	
	marker6.addListener('click',  function() {
		infowindow.open(map4,marker6);
	});
	
	var marker7 = new google.maps.Marker({
	position: pldtSM,
	map: map4,
	icon: "styles/markers/pldt.png"
	});
	
	var contentString6 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString6,
          maxWidth: 200
    });
	
	marker7.addListener('click',  function() {
		infowindow.open(map4,marker7);
	});
	
	
	
	
	
	
	var marker8 = new google.maps.Marker({
	position: globebdoAbanao,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString8 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker8.addListener('click',  function() {
		infowindow.open(map4,marker8);
	});
	
	
	
	var marker9 = new google.maps.Marker({
	position: globebdoSession,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString9 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker9.addListener('click',  function() {
		infowindow.open(map4,marker9);
	});
	
	
	
	var marker10 = new google.maps.Marker({
	position: globeBPI,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString10 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker10.addListener('click',  function() {
		infowindow.open(map4,marker10);
	});
	
	
	var marker11 = new google.maps.Marker({
	position: globelandbank,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString11 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker11.addListener('click',  function() {
		infowindow.open(map4,marker11);
	});
	
	
	var marker12 = new google.maps.Marker({
	position: globePNB,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString12 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker12.addListener('click',  function() {
		infowindow.open(map4,marker12);
	});
	
	
	var marker13 = new google.maps.Marker({
	position: globemetrobank,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString13 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker13.addListener('click',  function() {
		infowindow.open(map4,marker13);
	});
	
	
	var marker14 = new google.maps.Marker({
	position:globeSM,
	map: map4,
	icon: "styles/markers/globe.png"
	});
	
	var contentString14 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker14.addListener('click',  function() {
		infowindow.open(map4,marker14);
	});
	
	
	
	
	var marker15 = new google.maps.Marker({
	position: sunBanda,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString15 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker15.addListener('click',  function() {
		infowindow.open(map4,marker15);
	});
	
	
	var marker16 = new google.maps.Marker({
	position:sunBurn,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString16 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker16.addListener('click',  function() {
		infowindow.open(map4,marker16);
	});


var marker17 = new google.maps.Marker({
	position:sunBurnham,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString17 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker17.addListener('click',  function() {
		infowindow.open(map4,marker17);
	});


var marker18 = new google.maps.Marker({
	position:sunDikomahanap,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString18 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker18.addListener('click',  function() {
		infowindow.open(map4,marker18);
	});


var marker19 = new google.maps.Marker({
	position:sunNaAko,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString19 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker19.addListener('click',  function() {
		infowindow.open(map4,marker19);
	});


var marker20 = new google.maps.Marker({
	position:sunNayou,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString20 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker20.addListener('click',  function() {
		infowindow.open(map4,marker20);
	});


var marker21 = new google.maps.Marker({
	position:sunSM,
	map: map4,
	icon: "styles/markers/smart.png"
	});
	
	var contentString21 = '<h1>BDO Session</h1>'+
						'<h2>Upper Session #69</h2>'+
						'<h4> You can pay:</h4>'+
						'<h4> Electricity</h4>'+
						'<h4> You can also pay water and cable here</h4>';
	
	var infowindow = new google.maps.InfoWindow({
          content: contentString,
          maxWidth: 200
    });
	
	marker21.addListener('click',  function() {
		infowindow.open(map4,marker21);
	});	
	
	

}