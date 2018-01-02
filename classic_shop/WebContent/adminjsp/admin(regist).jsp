<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 
	
	<!-- board -->
	<div id="board" class="row">

		<div class="container">

			<h3 class="text-center">Board</h3>
			<!-- table -->

			<!-- contact modal button -->

			<a href="admin(regist).html">
				<button class="btn pull-right" data-toggle="modal"
					data-target="#contactModal">글등록</button>
			</a>


			<!-- contact -->
			<div id="contact" class="container">
				<h3 class="text-left">FAQ관리</h3>
				<div class="row">



					<div id="contact" class="container">
						<h3 class="text-left">FAQ확인</h3>
						<div class="row">
							<div class="col-md-8">
								<div class="row">
									<div class="col-sm-6 form-group">
										<input class="form-control" id="contactName"
											placeholder="TITLE" type="text" required>
									</div>
									<tr>
										<div class="col-sm-6 form-group">
											<input class="form-control" id="contactEmail"
												placeholder="불량제품이 왔어요" type="text" required>
										</div>
								</div>
								<textarea class="form-control" id="contactComments"
									placeholder="글내용 출력" rows="5"></textarea>




								<!-- contact modal button -->




								<div class="type1_nav">

									<a href="admin(seldel).html">
										<button class="btn pull-left" data-toggle="modal"
											data-target="#contactModal">목록</button>



									</a>
								</div>



								<!-- contact modal button -->
								<button class="btn pull-right" data-toggle="modal"
									data-target="#contactModal">수정</button>

								<!-- contact modal button -->
								<button class="btn pull-right" data-toggle="modal"
									data-target="#contactModal">삭제</button>




								<!-- Contact Modal -->
								<div class="modal fade" id="contactModal" role="dialog"
									data-backdrop="false">
									<div class="modal-dialog"></div>
								</div>

							</div>
						</div>

						
</body>
</html>