<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에어캠프</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<main class="wrap">
		<form action="/notice/list">
			<input name="keyword" id="keyword" placeholder="제목+내용" value="${search.keyword}"/>
			<input type="hidden" name="page" value="1">
			<button type="submit" class="btn-submit">검색</button>
			<c:if test="${sessionScope.u_id == 'admin'}">
				<div class="btns">
					<input type="button" value="글쓰기" onclick="location='noticewriteform'" />
				</div>
			</c:if>
			<table align="center" width="800">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>날짜</th>
					<th>조회수</th>
					<th>작성자</th>
				</tr>
				<c:forEach var="list" items="${noticeList}">
					<tr>
						<td>${list.no_no}</td>
						<td><a href="/notice/detail?page=${search.page}&keyword=${search.keyword}&no_no=${list.no_no}">${list.no_subject}</a></td>
						<td><a href="/notice/detail?page=${search.page}&keyword=${search.keyword}&no_no=${list.no_no}">${list.no_content}</a></td>
						<td>${list.no_date}</td>
						<td>${list.no_readcount}</td>
						<td>관리자</td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination-wrap">
			<c:choose>
			    <c:when test="${count > 0}">
			        <!-- 첫페이지, 이전블록 으로 이동 -->
			        <c:if test="${startPage > 1}">
			            <a href="/notice/list?page=1&&keyword=${search.keyword}"> << </a>
			        </c:if>
			        <c:if test="${startPage > 10}">
			            <a href="/notice/list?page=${startPage - 10}&keyword=${search.keyword}"> < </a>
			        </c:if>
			
			        <c:forEach var="i" begin="${startPage}" end="${endPage}">
	                    <a href="/notice/list?page=${i}&keyword=${search.keyword}">${i}</a>
			        </c:forEach>
			
			        <!-- 다음블록, 마지막페이지 로 이동 -->
			        <c:if test="${endPage < maxPage}">
			            <a href="/notice/list?page=${startPage + 10}&keyword=${search.keyword}"> > </a>
			        </c:if>
			        <c:if test="${endPage < maxPage}">
			            <a href="/notice/list?page=${maxPage}&keyword=${search.keyword}"> >> </a>
			        </c:if>
		    	</c:when>
		     	<c:otherwise>
			        검색된 캠핑장이 없습니다.
			    </c:otherwise>
		    </c:choose>
		</div>
		</form>
	</main>
	<%@ include file="../footer.jsp"%>
</body>
</html>