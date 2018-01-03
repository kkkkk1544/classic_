
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>


<!-- contact -->
<div id="contact" class="container">
	<div class="row">

		<!-- wrap -->
		<div id="wrap">
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
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#faqTitleOne" aria-expanded="true"
									aria-controls="faqTitleOne"> FAQ title </a>
							</h4>
						</div>
						<div id="faqTitleOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">FAQ contents</div>


							<div class="type1_nav">

								<a href="list.jsp"> <input type="button" value="등록"
									style="float: right;"></a>

								<!-- container -->
								<div id="container" >

									<!-- section -->
									<div class="section">

										<div class="panel panel-default">


											<!-- Table -->
											<table class="table">


												<table class="type1">
													<tr>
														<th align="right">TiTLE</th>
														<th>NAME</th>
														<th>DATE</th>
													</tr>


													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">
																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label=" "></input> <a
																			href="user(confirm).jsp">1번글입니다1번글입니다1번글입니다1번글입니다1번글입니다</a>

																		</span>
																	</div>
																</div>
															</div>

														</td>


														<td>ClassicClassicClassic</td>

														<td>YYYY-MM-DD</td>
													</tr>



													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">
																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label="  ">2번글입니다2번글입니다2번글입니다2번글입니다2번글입니다</input>

																		</span>
																	</div>
																</div>
															</div>

														</td>


														<td>ClassicClassicClassic</td>
														<td>YYYY-MM-DD</td>
													</tr>



													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">
																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label=" ">3번글입니다3번글입니다3번글입니다3번글입니다3번글입니다</input>

																		</span>
																	</div>
																</div>
															</div>

														</td>


														<td>ClassicClassicClassic</td>
														<td>YYYY-MM-DD</td>
													</tr>

													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">




																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label=" "> 1번글입니다1번글입니다1번글입니다1번글입니다1번글입니다</input>



																		</span>
																	</div>
																</div>
															</div>

														</td>

														<td>ClassicClassicClassic</td>
														<td>YYYY-MM-DD</td>
													</tr>


													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">
																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label="  "> 1번글입니다1번글입니다1번글입니다1번글입니다1번글입니다</input>
																		</span>
																	</div>
																</div>
															</div>

														</td>

														<td>ClassicClassicClassic</td>
														<td>YYYY-MM-DD</td>
													</tr>




													<tr>

														<td>
															<div class="row">
																<div class="col-lg-6">
																	<div class="input-group">
																		<span class="input-group-addon"> <input
																			type="checkbox" aria-label="  "> 1번글입니다1번글입니다1번글입니다1번글입니다1번글입니다</input>

																		</span>
																	</div>
																</div>
															</div>

														</td>

														<td>ClassicClassicClassic</td>
														<td>YYYY-MM-DD</td>
													</tr>



												</table>
												</div>


												<div class="type1_nav">

													<a href="admin(seldel).html"><input type="button"
														value="선택한 글 삭제"></a>
												</div>

												</div>
												</div>
												</div>
												</div>
