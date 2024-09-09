<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layout/header.jsp" %>

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
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">포스트 제목</h4>
				<a href="#" class="btn btn-secondary">상세보기</a>
			</div>
		</div>
	</div>
	<%@ include file="./layout/footer.jsp" %>
</body>
</html>