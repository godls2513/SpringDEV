<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layout/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
</head>
<body>
	<br>
	<div class="container mt-3">
	<c:if test="${not empty postlist}">
		<div class="card">
		<c:forEach var="post" items="${postlist.content}">
				<div class="card-body">
					<h4 class="card-title">${post.title }</h4>
					<a href="/post/${post.id}" class="btn btn-secondary">상세보기</a>
				</div>
			</c:forEach>	
		</div>
			<br>
			<ul class="pagination">
			  <li class="page-item <c:if test="${postlist.first}">disabled</c:if>">
			  <a class="page-link" href="?page=${postlist.number - 1}">Previous</a>
			  </li>
			  <li class="page-item <c:if test="${postlist.last }">disabled</c:if>">
			  <a class="page-link" href="?page=${postlist.number + 1}">next</a>
			  </li>
			</ul>				
		</c:if>
	</div>
	<%@ include file="./layout/footer.jsp"%>
</body>
</html>