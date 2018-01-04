<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="map_body">
	<div class="container">
		<div class="company">
			<div id="map" style="width:500px;height:400px;"></div>
				<script>
					var container = document.getElementById('map');
					var options = {
						center: new daum.maps.LatLng(33.450701, 126.570667),
						level: 3
					};
					var map = new daum.maps.Map(container, options);
				</script>
		</div>
		<div class="company">
			<div id="info">
				<h2>CLASSIC</h2>
			</div>
		</div>
	</div>
</div>