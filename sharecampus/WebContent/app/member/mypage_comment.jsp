<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
		rel="stylesheet">
	<title>마이페이지</title>
</head>
<div>
	<div id="container">
		<div id="asideWrap" class="active">
			<div class="sideNav -first">
				<ul>
					<li class="first_Nav" style="background-color: #3393f4;"><a
						href="mypage_main.html"> <span style="color: #fff;">내
								정보</span>
					</a></li>
					<li><a href="mypage_main.html"> <span>회원 정보 변경</span>
					</a></li>

				</ul>
			</div>
			<div class="sideNav -second">
				<ul>
					<li class="first_Nav" style="background-color: #3393f4;"><a
						href="mypage_writing.html"> <span style="color: #fff;">나의
								활동</span>
					</a></li>
					<li><a href="mypage_writing.html"> <span>내가 쓴 글
								모아보기</span>
					</a></li>
					<li><a href="mypage_comment.html"> <span>내가 쓴 댓글
								모아보기</span>
					</a></li>
					<li><a href="mypage_bookmark.html"> <span>내가 모은 책갈피
								모아보기</span>
					</a></li>
				</ul>
			</div>
		</div>
		<main id="content" role="main" class="more2" style="border: none;">
			<section class="sMypage">
				<h1 class="sMypageTitle"
					style="background-color: #3393f4; color: #fff;">
					나의 활동 - <span style="font-size: 12px">내가 쓴 댓글 모아보기</span>
				</h1>
				<div>
					<div class="board_list_wrap">
						<table class="board_list">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>작성일</th>
									<th>조회</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>7</td>
									<td class="tit"><a href="#">관상으로 알아보는 MBTI</a></td>
									<td>수무강</td>
									<td>2019-08-19</td>
									<td>883</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="tit"><a href="#">치킨을 시켰는데 닭다리가 없어요</a></td>
									<td>맘스터치</td>
									<td>2017-05-06</td>
									<td>883</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="tit"><a href="#">감자탕의 감자는 뼈인가 감자인가</a></td>
									<td>대왕감자</td>
									<td>2013-12-02</td>
									<td>413</td>
								</tr>
								<tr>
									<td class="tit">4</td>
									<td><a href="#">오늘도 무사히 하루를 보냈습니다.</a></td>
									<td>한동석</td>
									<td>2013-01-17</td>
									<td>921</td>
								</tr>
								<tr>
									<td class="tit">3</td>
									<td><a href="#">산타클로스는 존재하지 않나요?</a></td>
									<td>홍길동</td>
									<td>2013-11-08</td>
									<td>999+</td>
								</tr>
								<tr>
									<td class="tit">2</td>
									<td><a href="#">자서전을 쓰는 기발한 방법</a></td>
									<td>이도</td>
									<td>1433-01-22</td>
									<td>863</td>
								</tr>
								<tr>
									<td class="tit">1</td>
									<td><a href="#">[속보] 엘리 성당의 주탑이 붕괴</a></td>
									<td>스트롱</td>
									<td>1322-07-15</td>
									<td>982</td>

								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</main>
		<div style="display: block; width: 210px;"></div>
		<div class="sideRight" style="display: none;"></div>
	</div>
	<footer> </footer>
</div>
</html>