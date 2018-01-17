<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/public/css/comu.css' />">
<script src="<c:url value='/public/js/comu.js'/>"></script>
</head>
<body>
	<!-- COMMUNITY MENU -->    <!-- 리스트 모달버전으로 한번해봣어요 -->
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
	<!-- FAQ BODY -->
	<h3>FAQ</h3>

	<div class="dropdown">
		<button class="btn btn-outline-info dropdown-toggle"
			data-toggle="dropdown">글 제목2</button>

	
		<div class="dropdown-menu">
			<li>
				 <a class="dropdown-item disabled" href="#">faqList </a>
			<li>
		
		</div>

		<p id="faq_contents">${faq.a_content}</p></div>
	<div>
		<div class="comu_body">
			<p class="comu_title">FAQ</p>
			<div id="faqAccordion">
				<c:forEach var="faq" items="${faqList}">
					<h3 id="faq_title">${faq.q_title}</h3>
					<div class="container"></div>


				</c:forEach>
			</div>
		</div>
		
<tr>

<div class="dropdown">
		<button class="btn btn-outline-info dropdown-toggle"
			data-toggle="dropdown">글 제목3</button>

	
		<div class="dropdown-menu">
			<li>
				 <a class="dropdown-item disabled" href="#">글 내용3</a>
			<li>
		
		</div>

		<p id="faq_contents">${faq.a_content}</p></div>
	<div>
		<div class="comu_body">
			<p class="comu_title">FAQ</p>
			<div id="faqAccordion">
				<c:forEach var="faq" items="${faqList}">
					<h3 id="faq_title">${faq.q_title}</h3>
					<div class="container"></div>


				</c:forEach>
			</div>
		</div>
		


<tr>

<div class="dropdown">
		<button class="btn btn-outline-info dropdown-toggle"
			data-toggle="dropdown">글 제목4</button>

	
		<div class="dropdown-menu">
			<li>
				 <a class="dropdown-item disabled" href="#">글 내용4</a>
			<li>
		
		</div>




		<p id="faq_contents">${faq.a_content}</p></div>
	<div>
		<div class="comu_body">
			<p class="comu_title">FAQ</p>
			<div id="faqAccordion">
				<c:forEach var="faq" items="${faqList}">
					<h3 id="faq_title">${faq.q_title}</h3>
					<div class="container"></div>


				</c:forEach>
			</div>
		</div>
		
		
		