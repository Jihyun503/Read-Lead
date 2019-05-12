<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 325px;
        margin: 30px;
        border-style: dotted;
        border-color: palevioletred;
        
      }
      /* Optional: Makes the sample page fill the window. */
      /* html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        background-color: beige;
      } */
    </style>
  </head>
  <body>
  <center>
    <img src="image/lib.png" style="margin-left:25px;">
    <div id="map" style="margin-left:25px; padding-left:25px;"></div>
    <script>
      function initMap() {
    	var lib1 = {lat: 37.5898304, lng: 127.0451721};

        var map = new google.maps.Map(document.getElementById('map'), {
          center: lib1,
          zoom: 10
        });
        
        	var contentString1 = '<p><b>동대문정보화도서관</b>';

    	    var infowindow1 = new google.maps.InfoWindow({
    	      content: contentString1
    	    });
    	    
            var marker1 = new google.maps.Marker({
              position: lib1,
              map: map,
              title: 'lib1'
            });
            
            marker1.addListener('click', function() {
              infowindow1.open(map, marker1);
            }); //동대문정보화
            
            
            var lib2 = {lat: 37.573151, lng: 127.0483103};
            
            var contentString2 = '<p><b>답십리도서관</b>';

    	    var infowindow2 = new google.maps.InfoWindow({
    	      content: contentString2
    	    });
    	    
            var marker2 = new google.maps.Marker({
              position: lib2,
              map: map,
              title: 'lib2'
            });
            
            marker2.addListener('click', function() {
              infowindow2.open(map, marker2);
            }); //답십리
            
            
			var lib3 = {lat: 37.5731497, lng: 127.0329894};
            
            var contentString3 = '<p><b>장안어린이도서관</b>';

    	    var infowindow3 = new google.maps.InfoWindow({
    	      content: contentString3
    	    });
    	    
            var marker3 = new google.maps.Marker({
              position: lib3,
              map: map,
              title: 'lib3'
            });
            
            marker3.addListener('click', function() {
              infowindow3.open(map, marker3);
            }); //답십리
          
            
			var lib4 = {lat: 37.4774743, lng: 126.9162166};
            
            var contentString4 = '<p><b>관악문화관도서관</b>';

    	    var infowindow4 = new google.maps.InfoWindow({
    	      content: contentString4
    	    });
    	    
            var marker4 = new google.maps.Marker({
              position: lib4,
              map: map,
              title: 'lib4'
            });
            
            marker4.addListener('click', function() {
              infowindow4.open(map, marker4);
            });
            
            
			var lib5 = {lat: 37.6535691, lng: 127.0292746};
            
            var contentString5 = '<p><b>노원정보도서관</b>';

    	    var infowindow5 = new google.maps.InfoWindow({
    	      content: contentString5
    	    });
    	    
            var marker5 = new google.maps.Marker({
              position: lib5,
              map: map,
              title: 'lib5'
            });
            
            marker5.addListener('click', function() {
              infowindow5.open(map, marker5);
            }); //답십리
            
            
			var lib6 = {lat: 37.5787204, lng: 126.9765328};
            
            var contentString6 = '<p><b>서울특별시교육청 정독도서관</b>';

    	    var infowindow6 = new google.maps.InfoWindow({
    	      content: contentString6
    	    });
    	    
            var marker6 = new google.maps.Marker({
              position: lib6,
              map: map,
              title: 'lib6'
            });
            
            marker6.addListener('click', function() {
              infowindow6.open(map, marker6);
            }); //답십리
            
            
			var lib7 = {lat: 37.5786984, lng: 126.9240023};
            
            var contentString7 = '<p><b>광진정보도서관</b>';

    	    var infowindow7 = new google.maps.InfoWindow({
    	      content: contentString7
    	    });
    	    
            var marker7 = new google.maps.Marker({
              position: lib7,
              map: map,
              title: 'lib7'
            });
            
            marker7.addListener('click', function() {
              infowindow7.open(map, marker7);
            }); //답십리
            
            
			var lib8 = {lat: 37.5546775, lng: 127.0227157};
            
            var contentString8 = '<p><b>성동구립도서관</b>';

    	    var infowindow8 = new google.maps.InfoWindow({
    	      content: contentString8
    	    });
    	    
            var marker8 = new google.maps.Marker({
              position: lib8,
              map: map,
              title: 'lib8'
            });
            
            marker8.addListener('click', function() {
              infowindow8.open(map, marker8);
            }); //답십리
            
            
        
      }

      var TILE_SIZE = 256;

      // The mapping between latitude, longitude and pixels is defined by the web
      // mercator projection.
      function project(latLng) {
        var siny = Math.sin(latLng.lat() * Math.PI / 180);

        // Truncating to 0.9999 effectively limits latitude to 89.189. This is
        // about a third of a tile past the edge of the world tile.
        siny = Math.min(Math.max(siny, -0.9999), 0.9999);

        return new google.maps.Point(
            TILE_SIZE * (0.5 + latLng.lng() / 360),
            TILE_SIZE * (0.5 - Math.log((1 + siny) / (1 - siny)) / (4 * Math.PI)));
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAA3SMEs6UO3Vq8cR8Ddee7FDq8tywmZpY&callback=initMap">
    </script>
    </center>
<body>
</body>
</html>