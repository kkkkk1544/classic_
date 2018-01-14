<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<div id="mainFooter">
	<!-- 저작권 표시 -->
	<div class="footer_logo">
		<h3><a href="<c:url value='/main.do' />">CLASSIC</a></h3>
		<p><small>COPYRIGHT © <span>CLASSIC</span> ALL RIGHTS RESERVED.</small></p>
	</div>
	<!-- left Start -->
	<div class="left_footer">
		<!-- 회사 정보  -->
		<div class="company">
			<p class="cs">
				<span class="name">TEL</span><span class="value">000-0000-0000</span>
				<span class="name">FAX</span><span class="value">00-000-0000</span>
				<span class="badge badge-pill project"><a href="<c:url value='/introduce.do'/>">Project Info</a></span>
			</p>
			<p class="cs">
				<span id="operation">
					<small>
						Mon-Friday pm1:00~pm5:30 / Lunch pm12:00~pm1:00<br>
						Sat.Sun.Holiday OFF
					</small>				
				</span>
			</p>
			<p class="cs">
				<span class="name">COMPANY</span><span class="value">클래식</span>
				<span class="name">OWNER</span><span class="value">클래식</span>
			</p>
			<p class="cs">
				<span class="name">ADDRESS</span>
				<span class="value">서울특별시 종로구 종로 69 YMCA빌딩 7층</span>
				<span class="badge badge-pill badge-info location">
					<a href="#" data-toggle="modal" data-target="#mapModal">location</a>
				</span>
			</p>
				<!-- 지도 Modal -->
				<div class="modal fade" id="mapModal">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h3 class="modal-title">CLASSIC LOCATION</h3>
							</div>
							<div class="modal-body" style="display: inline-block;">
								<div id="map" style="width:500px;height:500px; display: inline-block;"></div>
									<script>
										$("#mapModal").click(function(){
											daum.maps.load(function() {
												var container = document.getElementById('map');
												var options = {
													center: new daum.maps.LatLng(37.570584, 126.985125),
													level: 3
												};
												var map = new daum.maps.Map(container, options);
												var mapTypeControl = new daum.maps.MapTypeControl();
												map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
												var zoomControl = new daum.maps.ZoomControl();
												map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
												var marker = new daum.maps.Marker({
													position: map.getCenter()
												});
												marker.setMap(map);
												var infowindow = new daum.maps.InfoWindow({
													content: '<div style="width:160px; text-align:center; padding:6px 0;">CLASSIC</div>'
												});
												infowindow.open(map, marker);
											});
										});
									</script>
									<div id="locationInfo" style="display: inline-block;">
										<p>주소 및 연락처</p>
										<p>서울특별시 종로구 종로 69 YMCA빌딩 7층</p>
										<p>TEL) 000-0000-0000</p>
										<p>FAX) 00-000-0000</p>
										<p>찾아오시는 길 안내</p>
										<p>지하철 1호선 종각역 8번 출구 (도보 1분)</p>
									</div>
							</div>
							<div class="modal-footer">
							</div>
						</div>
					</div>
				</div>
			<p class="cs">
				<span class="name">BUSINESS LICENSE</span><span class="value">000-00-00000</span>
			</p>
			<p class="cs">
				<span class="name">E-MAIL</span><span class="value">classic@shopping.mall</span>
			</p>
		</div>
		<!-- 계좌 정보 -->
		<div class="bank">
			<p class="footer_title">ACCOUNT INFO</p>
				<p class="bank_info">
					<span>bank_name</span><span>bank_num</span>
				</p>
				<p class="bank_info">
					<span>bank_name</span><span>bank_num</span>
				</p>
				<p class="bank_info">
					<span>bank_name</span><span>bank_num</span>
				</p>
				<p class="bank_info">
					<span class="name">NAME</span><span>name</span>
				</p>
		</div>
	</div><!-- left_footer END -->
	<!-- right Start -->
	<div class="right_footer">
		<!-- 교환/환불 -->
		<div class="return_exchange">
			<p class="footer_title"> RETURN / EXCHANGE</p>
			<p><span>서울특별시 종로구 종로 69 YMCA빌딩 7층</span></p>
			<p><small>자세한 교환/반품 절차 안내는 QNA 및 NOTICE를 참고해주세요</small></p>
		</div>
	</div>
</div>

<!-- 부트스트랩 lib -->
<script src='<c:url value="/public/bootstrap/js/bootstrap.min.js"/>'></script> 
</body>
</html> 