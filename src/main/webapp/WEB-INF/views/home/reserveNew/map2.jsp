<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>s</h1>
						 <!-- 내가 가져온 지도 constant 지도!!!!!!!!!!!-->			 
<div class="map_area">
	<div class="map" id="map" style="width:350px;height:350px;"></div>
					 
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	4964815528aa3bf5334721911ccdc696"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.542990773269565, 129.33653130703433), // 지도의 중심좌표
		        level: 2 // 지도의 확대 레벨 
		    }; 
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		// 마우스 드래그와 모바일 터치를 이용한 지도 이동을 막는다
		map.setDraggable(false);		

		// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
		map.setZoomable(false);  
		
		// 커스텀 오버레이에 표시할 내용입니다     
		// HTML 문자열 또는 Dom Element 입니다 
		var content = '<div class ="label"><span class="left"></span><span class="center">치과</span><span class="right"></span></div>';

		// 커스텀 오버레이가 표시될 위치입니다 
		var position = new kakao.maps.LatLng(35.54254097826589, 129.3357961417249);  

		// 커스텀 오버레이를 생성합니다
		var customOverlay = new kakao.maps.CustomOverlay({
		    position: position,
		    content: content   
		});

		// 커스텀 오버레이를 지도에 표시합니다
		customOverlay.setMap(map);
		
		var hsp = new kakao.maps.LatLng(35.54297, 129.33657);
		//위치 정보 가져오기
		var lat;
		var lon;
		var options = {
		      enableHighAccuracy: true,
		      timeout: 5000,
		      maximunAge: 0
		};
		
		function success(position){
		   console.log(position);
		       lat = position.coords.latitude, // 위도
		        lon = position.coords.longitude; // 경도
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		         message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
		         
		           // 마커와 인포윈도우를 표시합니다
		           displayMarker(locPosition, message);
		   
		};
		
		function error(err){
		   console.log(err);
		};
		
		
		//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    var na = navigator.geolocation.watchPosition(success,error,options);
		    console.log(na);
		}
		
		var marker;
		var flag = false;
		function displayMarker(locPosition, message){
		   console.log(1);
		   if(flag){
		      marker.setMap(null);
		   }
		   //마커를 생성합니다
		   marker = new kakao.maps.Marker({
		      position: locPosition
		   });
		   marker.setMap(map);
		   flag=true;
		        
		
		    // 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(hsp);      
		}    
	
</script>
	
</div>
</body>
</html>