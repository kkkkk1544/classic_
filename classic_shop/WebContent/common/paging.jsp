<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="pagingBlock" align="center">
	<ul class="pagination">
		<li>
			<a href="${url}${p.startBlock}" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
		<c:if test="${p.startBlock > p.pageBlock}">
			<li><a href="${url}${p.startBlock-1}">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${p.startBlock}" end="${p.endBlock}">
			<c:choose>
				<c:when test="${p.pageNum==i}">
					<li class="active"><a href="#">${i}</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${url}${i}">${i}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${p.endBlock < p.totalBlock}">
			<li><a href="${url}${p.endBlock+p.pageBlock}">다음</a></li>
		</c:if>
		<li>
			<a href="${url}${p.endBlock}" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
	</ul>
</div>
