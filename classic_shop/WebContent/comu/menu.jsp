<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="comu_menu">
	<div class="container">
		<h2>COMMUNITY</h2>
			<ul class="nav nav-tabs">
				<li><a href="<c:url value='/comu/notice/list.jsp' />">NOTICE</a>
				<li><a href="<c:url value='/qna.do' />" id="qnaList">QNA</a></li>
<%-- 				<li><a href="<c:url value='/comu/qna/list.jsp' />">QNA</a></li> --%>
				<li><a href="<c:url value='/comu/faq/list.jsp' />">FAQ</a></li>
			</ul>
	</div>
</div>
