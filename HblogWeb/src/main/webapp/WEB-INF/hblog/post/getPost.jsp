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

	<div class="container border">
		<br>
			<div>
					<h3>${post.title}</h3>
			</div>
			
			<div>
					<div>${post.content}</div>
			</div><br>
			
			<div>
				포스트 번호: <span id="id"><i>${post.id}</i></span><br>
				작성자 : <span><i>${post.user.username}</i></span>
			</div>
			<hr>
		<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
		<c:if test="${post.user.username == principal.username }">
		<a href="/post/updatePost/${post.id}" class="btn btn-warning">수정하기</a>
		<button id="btn-delete" class="btn btn-danger">삭제하기</button>
		</c:if><br><br>
		<div class="container mt-3">
			<input type="hidden" id="postId" value="${post.id}">
		  <table class="table">
		    <thead>
		      <tr>
		        <th><h4>댓글 목록</h4></th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr align="right">
		        <td>
		        	<textarea id="reply-content" rows="1" class="form-control"></textarea>
		        	<button id="btn-save-reply" class="btn btn-secondary">댓글 등록</button>
		        </td>
		      </tr>
		    </tbody>
		  </table>
		</div>
	</div>
	<script src="/js/post.js"></script>
	<script src="/js/reply.js"></script>
<%@ include file="../layout/footer.jsp" %>
</body>
</html>
