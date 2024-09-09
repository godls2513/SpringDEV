let postObject = {
	init: function() {
		let _this = this;

		// #btn-insert 버튼에 click 이벤트가 발생하면 insertPost() 함수 호출
		$("#btn-insert").on("click", () => {
			_this.insertPost();
		});
	},

	insertPost: function() {
		alert("포스트 등록 요청됨");

		let post = {
			title: $("#title").val(),
			content: $("#content").val(),
		}
		
		// ajax를 이용한 비동기 호출
		// done() 함수 : 요청처리에 성공했을 때 실행될 코드
		// fail() 함수 : 요청처리에 실패했을 때 실행될 코드
		$.ajax({
			type: "POST", // 요청방식 : POST
			url: "/post", // 요청 경로
			data: JSON.stringify(post), // post 객체를 JSON 형태로 변환
			contentType: "application/json; charset=utf-8" // HTTP의 body에 설정되는 데이터 마임 타입
			// 응답으로 들어온 JSON 데이터를 response로 받는다
		}).done(function(response) {
			// 응답 메세지를 콘솔에 출력하고 메인 페이지로 이동
			console.log(response);
			location = "/";
			// 에러 발생 시 error로 에러 정보를 받는다
		}).fail(function(error) {
			//error 메세지를 알림창에 출력
			let message = error["data"]
			alert("에러 발생: " + message);
		});
		// post 객체의 값을 콘솔에 출력
		console.log(post);
	},
}

// postObject 객체의 init() 함수 호출
postObject.init();

