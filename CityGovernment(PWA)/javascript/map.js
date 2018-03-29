function initMap(){
		
		
			var maryheights = {lat: 16.4023,lng:120.5963};
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 16,
				center: maryheights,
				zoomControl: false,
				gestureHandling: 'greedy'
			});
		
			var marker = new google.maps.Marker({
				position:maryheights,
				animation:google.maps.Animation.BOUNCE
			});

			marker.setMap(map);
		
	
}

	var icons = 'markers/';
			var iconType = {
				electricity: {
					icon: icons + 'yellowMarker'
				},
				
				water: {
					icons: icons + 'blueMarker'
				},
				
				cable: {
					icons: icons + 'skyBlueMarker'
				}
			};
			
			var features = [
			{
				position: new google.maps.Latlng(16.411725, 120.598242),
				type: 'electricity' 
			},
			{
				position: new google.maps.Latlng(16.414061, 120.594094);
				type: 'electricity'
			},
			{
				position: new google.maps.latlng(16.413039, 120.597089);
				type: 'water'
			},
			{
				position: new google.maps.Latlng(16.411507, 120.598562);
				type: 'water'
			}
			];
			
			
			
			map.getInfoWindow().hide() 
   if (document.getElementById(color).checked==false) { // hide the marker
      for (var i=0;i<gmarkers.length;i++) {
         if (gmarkers[i].type==color)  {
            map.removeOverlay(gmarkers[i]);
         }
      }
   } else { // show the marker again
      for (var i=0;i<gmarkers.length;i++) {
         if (gmarkers[i].type==color)  {
            map.addOverlay(gmarkers[i]);
         }
      }
   }
}

<script type="text/javascript">
  //<![CDATA[
// global variables
var gmarkers=[];
var map;
var request;
// var bounds = new GBounds(Number.MAX_VALUE, Number.MAX_VALUE, -Number.MAX_VALUE, -Number.MAX_VALUE); 
var bounds = new GLatLngBounds();
// Create our "tiny" marker icon 
var baseIcon = new GIcon();
baseIcon.image = "http://labs.google.com/ridefinder/images/mm_20_red.png";
baseIcon.shadow = "http://labs.google.com/ridefinder/images/mm_20_shadow.png";
baseIcon.iconSize = new GSize(12, 20);
baseIcon.shadowSize = new GSize(22, 20);
baseIcon.iconAnchor = new GPoint(6, 20);
baseIcon.infoWindowAnchor = new GPoint(5, 1);
baseIcon.imageMap = [4,0,0,4,0,7,3,11,4,19,7,19,8,11,11,7,11,4,7,0]; 
baseIcon.transparent = "mapIcons/mm_20_transparent.png";

var icons=[];

function coloredRideshareIcon(iconColor) {
   var color;
   if ((typeof(iconColor)=="undefined") || (iconColor==null)) { 
      color = "red" 
   } else { 
      color = iconColor; 
   }
   if (!icons[iconColor]) {
      var icon = new GIcon(baseIcon);
      icon.image = "http://labs.google.com/ridefinder/images/mm_20_"+ color +".png";
      icons[iconColor]=icon;

   } 
   return icons[iconColor];
}
	

function addMarker(lng, lat, title, iconStr) {
   var point = new GLatLng(lat, lng);
   bounds.extend(point);
   var icon = coloredRideshareIcon(iconStr);
   var marker = new GMarker(point, icon);
   gmarkers.push(marker);
   marker.type = iconStr; 
   GEvent.addListener(marker, "click", function () {
      // FF 1.5 fix
      var text = "<div style=\"white-space:nowrap;\"><div align=\"center\" class=\"smalltext\">"+title +"</div></div>";
      marker.openInfoWindowHtml(text);
   });
   map.addOverlay(marker);
}

function processXML() { 
   if (request.readyState == 4) {
      if (request.status != 200) {
         alert("file not found:"+request.status);
         return;
      }
      var xmlDoc = request.responseXML;
      if (!xmlDoc) {
         alert("invalid xml file");
         return;
      }
      markers = xmlDoc.documentElement.getElementsByTagName("marker");
      for (var i=0; i < markers.length; i++) {
         var color= markers[i].getAttribute("icon");
         addMarker(parseFloat(markers[i].getAttribute("lng")),
                   parseFloat(markers[i].getAttribute("lat")),
                   markers[i].getAttribute("title"), color);
	 // since all the markers are loaded by default, make sure all the boxes are checked
         document.getElementById(color).checked=true;
      }
      map.centerAndZoomOnBounds(bounds);
   }
} 
				  
function makeMap() {
   map = new GMap(document.getElementById("map"));
   map.addControl(new GLargeMapControl());
   map.addControl(new GMapTypeControl());
//   map.centerAndZoom(new GPoint(-3.97729, 54.30000), 11);	
   map.setCenter(new GLatLng(54.30000, -3.97729), 6);

   request = GXmlHttp.create(); 
   request.open("GET", "checkbox_exampleC.xml", true); 
   request.onreadystatechange = processXML;
   request.send(null);
}	
	