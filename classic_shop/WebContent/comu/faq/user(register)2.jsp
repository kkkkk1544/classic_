<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/comu/menu.jsp"%>

<div class="comu_body">	<!-- 일단 기능 이것저것 햇는데 필요없으면 빼도 될것 같아요~ -->
	<p class="comu_title">FAQ</p>
	<div class="panel-group" id="accordion" role="tablist"
		aria-multiselectable="true">
		<div class="panel panel-default">				<!-- h2로 바꾸면 모양이상해져서 h4로 햇어요~ -->
			<div class="panel-heading" role="tab" id="headingOne">
				<h4 class="panel-title"></h4>

				<div class="input-group" style="padding: unset;">
					<span class="input-group-addon" id="basic-addon1"> <!-- 구글에서 실행하면 pading은 0으로 해놧어요~ -->
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#faqTitleOne" aria-expanded="true"
								aria-controls="faqTitleOne"> FAQ title </a>
						</h4>


					</span> <input type="text" class="form-control" placeholder="제목을 입력해주세요"
						aria-describedby="basic-addon1">
				</div>




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
								placeholder="내용을 입력해주세요" rows="10" form="100"
								style="width: 100%;"></textarea>



							<!-- contact modal button -->


							<div class="type1_nav"></div>






<div class="form-group">
 <div class="col-sm-10">
  <div class="input-group">
   <label class="input-group-btn" >
    <span class="btn btn-default btn-file"	 >
      <input type="file" name="attach_file" data-display-target="attachFile"
     >
    </span>
   </label>
  </div>
 </di>v
</div>


							<!-- contact modal button -->
							<button class="btn pull-right" data-toggle="modal"
								data-target="#contactModal">취소</button>

							<!-- 등록버튼이 와이어프레임에 2개 인거 같은데 일단 하나만 넣엇어요~ -->
							<!-- contact modal button -->
							<button class="btn pull-right" data-toggle="modal"
								data-target="#contactModal">등록</button>


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