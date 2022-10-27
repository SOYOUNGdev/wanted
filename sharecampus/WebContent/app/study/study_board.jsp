<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>스토리보드</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/studyBoard.css">
</head>

<body>
	<div class="bigBox1">
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/header.jsp" />
		<div id="afthd">
			<div id="box">
				<div id="title">[C&P]모집</div>
				<div class="profile">
					<div class="profPic">
						<img
							src="${pageContext.request.contextPath}/assets/images/men.jpg"
							style="width: 40px; height: 40px; border-radius: 30px;">
					</div>
					<div class="profName">한신E</div>
				</div>
				<div class="time">10/22 16:00</div>
				<div class="report">
					<a href="">신고하기</a>
				</div>
				<hr class="hr1">
				<div class="field">분야</div>
				<span class="answerfield"> 자율 </span>
				<div class="location">지역</div>
				<span class="answerlocation"> 서울 </span>
				<div class="people">인원</div>
				<span class="answerpeople"> 1~4명 </span>
				<hr class="hr2">
				<span class="about">내용이 들어갈 부분</span>
				<hr class="hr5">
				<div class="comment">댓글</div>
				<div class="noComment">아직 등록된 댓글이 없습니다.</div>
				<hr class="hr3">
				<div class="commentWrite">댓글 쓰기</div>
				<div id="commentBox">
					<div>
						<textarea id="cwrite" cols="83%" rows="5%"
							placeholder="  댓글을 남겨보세요."></textarea>
						<hr class="hr4">
						<button class="btn" onclick="cl()">등록</button>
					</div>


				</div>
			</div>
		</div>
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include
			page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/studyBoard.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
</html>