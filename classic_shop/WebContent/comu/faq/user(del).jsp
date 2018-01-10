
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>


<!-- contact -->
<div id="contact" class="container">
	<div class="row">

		<!-- wrap -->
		<div id="wrap">
			<!-- 관리자용wf에 select만 더 추가해서 구현할 예정이에욥 -->
			<!-- 글씨색상은 a태그 걸린것은 파랑으로 햇어요 -->

			<!-- 580px 이하에서 메뉴바 생성 -->
			<script type="text/javascript">
				$(".handle").on("click", function() {
					$("nav ul").toggleClass("showing");
				});
			</script>

			<div class="comu_body">
				<p class="comu_title">FAQ</p>
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">


					<div class="panel panel-default">

						<div class="panel-heading" role="tab" id="headingOne">
							<h2 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#faqTitleOne" aria-expanded="true"
									aria-controls="faqTitleOne"> FAQ title </a>
							</h2>
						</div>
						<div id="faqTitleOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">FAQ contents</div>


							<div class="type1_nav">

								<button type="button" class="btn btn-default pull-right"
									onclick="location.href='/classic_shop/comu/faq/user(register).jsp'">
									등록</button>


								<!-- container -->

								<!-- section -->
								<div class="section">

									<div class="panel panel-default">


										<!-- Table -->


										<table class="type1">





											<tr>

												<td>
													<div class="row">
														<div class="col-lg-6">
															<div class="input-group"></div>
														</div>
													</div>

												</td>


											</tr>




											<tr>

												<div class="panel panel-default">
													<table class="faq_title">
														<tr>
															<th>No.</th>
															<th>SUBJECT</th>
															<th>NAME</th>
															<th>DATE</th>
															<th>VIEW</th>
														</tr>

														<tr>

															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>



															<td>1</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>


														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>

														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>


														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
														<tr>
															<td><label><input type="checkbox"
																	aria-label="  "> <a href="#">상품명:product_name</a></input></label><br>
																<!-- 상품명 누르면 상품상세정보로 --></td>
															<td>3</td>
															<td>order_money</td>
															<td>YYYY-MM-DD</td>
															<td>now_mileage</td>
														</tr>
												</div>
												</div>
										</table>
									</div>


									<div class="type1_nav">

										<button type="button" class="btn btn-default pull-right" 
									onclick="location.href='/classic_shop/comu/faq/user(register).jsp'">
								선택한 글 삭제</button>
									</div>

								</div>
							</div>
						</div>