<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="comu_menu">
	<div class="container">
		<h2>COMMUNITY</h2>
			<ul class="nav nav-tabs">
				<li><a data-toggle="tab" href="<c:url value='/comu/notice/list.jsp' />">NOTICE</a>
				<li><a data-toggle="tab" href='javascript:loadQnaList()'>QNA</a></li>
				<li><a data-toggle="tab" href="<c:url value='/comu/faq/list.jsp' />">FAQ</a></li>
			</ul>
	</div>
</div>
