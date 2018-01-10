<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>

<div class="comu_body">
	<p class="comu_title">FAQ</p>
	<div class="panel-group" id="accordion" role="tablist"
		aria-multiselectable="true">
		<div class="panel panel-default">

			<a href="user(register).jsp">
				<button class="btn pull-right" data-toggle="modal"
					data-target="#contactModal">글 등록</button>
			</a>

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
			</div>


			<div id="contact" class="container">
				<div class="row">



					<div id="contact" class="container">

						<div class="row">
							<div class="col-md-8"></div>


							<textarea class="form-control" id="contactComments"
								placeholder="글내용 출력" rows="10" form="100" style="width: 100%;"></textarea>



							<!-- contact modal button -->
							<div class="type1_nav">

								<a href="list.jsp">
									<button class="btn pull-left" data-toggle="modal"
										data-target="#contactModal">목록</button>
								</a>
							</div>

							<!-- contact modal button -->
							<a href="user(register).jsp">
								<button class="btn pull-right" data-toggle="modal"
									data-target="#contactModal">수정</button>
							</a>



							<!-- alert창에서 삭제 알람은 아직 못햇네요~ -->
							<!-- contact modal button -->
							<a href="user(alert).jsp">
								<button class="btn pull-right" data-toggle="modal"
									data-target="#contactModal">삭제</button>
							</a>


							<!-- Contact Modal -->
							<div class="modal fade" id="contactModal" role="dialog"
								data-backdrop="false">
								<div class="modal-dialog"></div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>

		<body id="home" data-spy="scroll" data-target=".navbar"
			data-offset="50">



			<!-- board -->
			<div id="board" class="row">

				<div class="container">

					<!-- table -->


					<!-- contact -->