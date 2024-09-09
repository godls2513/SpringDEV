<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../layout/header.jsp"%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="container mt-3">
		<form>
			<div class="mb-3">
				<label for="uname">Username:</label> 
				<input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
			</div>
			<div class="mb-3">
				<label for="pwd">Password:</label> 
				<input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
			</div>
			<div class="mb-3 mt-3">
				<label for="email">Email:</label> 
				<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
			</div>
		</form>
		<button id="btn-save" class="btn btn-secondary">회원가입</button>
	</div>
	<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>
</body>
</html>
