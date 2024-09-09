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
				<label for="title">Title:</label> 
				<input type="text" class="form-control" id="title" placeholder="Enter Title" >
			</div>
			<div class="mb-3">
				<label for="content">Content:</label> 
				<textarea class="form-control" rows="5" id="content"></textarea>
			</div>
		</form>
		<button id="btn-insert" class="btn btn-secondary">포스트 등록</button>
	</div>
	
	<script>
	$(document).ready(function() {
		  $('#content').summernote({
			  height: 300
		  });
		});
	</script>
	<script src="/js/post.js"></script>
<%@ include file="../layout/footer.jsp" %>
</body>
</html>
