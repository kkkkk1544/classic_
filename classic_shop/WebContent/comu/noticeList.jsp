<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- COMMUNITY MENU -->
<div class="comu_menu">
	<div class="container">
		<h2>COMMUNITY</h2>
			<ul class="nav nav-tabs">
				<li><a href="<c:url value='/community/notice.do' />">NOTICE</a></li>
				<li><a href="<c:url value='/community/qna.do' />">QNA</a></li>
				<li><a href="<c:url value='/community/faq.do' />">FAQ</a></li>
			</ul>
	</div>
</div>
<div class="comu_body">
	<p class="comu_title">NOTICE</p>
		<div class="table-responsive" id="notice_read">
			<table class="table table-hover">
				<tbody class="notice_title">
					<tr>
						<th class='col-sm-1'>No.</th>
						<th class='col-sm-6' style="text-align: left;">TITLE</th>
						<th class='col-sm-1'>NAME</th>
						<th class='col-sm-1'>DATE</th>
						<th class='col-sm-1'>VIEW</th>
					</tr>
				</tbody>
				<tbody class="notice_contents">
					<c:forEach var="notice" items="${noticeList}">
						<tr>
							<td>${notice.num}</td>
							<td style="text-align: left;"><a href="javascript:readNotice('${notice.num}')">${notice.title}</a></td>
							<td>${notice.name}</td>
							<td>${notice.indate}</td>
							<td>${notice.count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
<!-- PAGING -->
		<div class="comu_paging">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</div>
</div>
