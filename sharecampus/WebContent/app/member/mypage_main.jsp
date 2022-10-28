<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	
	<title>마이페이지</title>
</head>
<div>
	<!-- 배너 관리 시작 -->
	<div id="container">
		<!-- 왼쪽 배너 시작 -->
		<div id="asideWrap" class="active">
			<div class="sideNav -first">
				<!-- 왼쪽 첫번째 배너 시작-->
				<ul>
					<li class="first_Nav" style="background-color: #3393f4;"><a
						href="mypage_main.html"> <span style="color: #fff;">내
								정보</span>
					</a></li>
					<li><a href="mypage_main.html"> <span>회원 정보 변경</span>
					</a></li>
				</ul>
				<!-- 왼쪽 첫번째 배너 끝-->
			</div>
			<div class="sideNav -second">
				<!-- 왼쪽 두번째 배너 시작-->
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
				<!-- 왼쪽 두번째 배너 끝-->
			</div>
		</div>
		<!-- 오른쪽 배너 시작 -->
		<main id="content" role="main" class="more" style="border: none">
			<section class="sMypage">
				<!-- 오른쪽 배너 타이틀 -->
				<h1 class="sMypageTitle"
					style="background-color: #3393f4; color: #fff;">내 정보</h1>
				<!-- 오른쪽 배너 타이틀 -->
				<div>
					<div class="sMypageProfile">
						<h2 class="sMypageSubTitle">사용중인 프로필</h2>
						<div class="sMypageProfileBox">
							<!-- 프로필 이미지 미리보기 설정 -->
							<div class="profileList">
								<label for="input_image">
									<div></div>
								</label> <input type="file" id="input_image" style="display: none;">
							</div>
							<!-- 프로필 이미지 미리보기 설정 끝-->
						</div>
						<!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
						<div class="sMypageProfileBtnArea">
							<a href="#" class="uButton -sizeS -confirm3">관리</a>
						</div>
						<!-- 프로필 이미지 눌러 해당 주소를 DB로 -->
					</div>
					<div class="sMypageInfo">
						<h2 class="sMypageSubTitle">개인 정보</h2>
						<div class="sMypageInfoCont">
							<ul class="sMypageInfoList">
								<li class="sMypageInfoItem _birthdayTextPanel">
									<h3 class="label">생일</h3> <!-- 현재 DB에 있는 생일을 입력 -->
									<div id="now_Birth">현재 DB상 생일</div> <!-- 현재 DB에 있는 생일을 입력 끝 -->
									<!-- 바꿀 생일 값을 설정 -->
									<div class="content">
										<input type="date" class="Chan_Bitrh" style="font-size: 13px;">
									</div> <!-- 바꿀 생일 값을 설정 --> <!-- 바꿀 생일 값을 DB로 보낸다.-->
									<div class="btn">
										<a href="#"
											class="uButton -sizeS -confirm3 _btnChangeBirthday">변경</a>
									</div> <!-- 바꿀 생일 값을 DB로 보낸다.-->
								</li>
								<!-- 성별 설정 라인 -->
								<li class="sMypageInfoItem _genderActionPanel">
									<h3 class="label">성별</h3>
									<div id="now_Gender">현재 DB상 성별</div>
									<div class="content">
										<!-- 바꿀 성별 값을 설정 -->
										<div class="uSelect">
											<select id="chan_Gender" class="_selectGender" title="성별 선택"
												style="width: 118px;">
												<option class="hide">성별</option>
												<option value="male">남성</option>
												<option value="female">여성</option>
											</select>
											<!-- 바꿀 성별 값을 설정 -->
										</div>
									</div> <!-- 바꿀 생일 값을 DB로 보낸다.-->
									<div class="btn">
										<a href="#" class="uButton -sizeS -confirm"
											id="_btnUpdateGender">확인</a>
									</div> <!-- 바꿀 생일 값을 DB로 보낸다.-->
								</li>
								<!-- 성별 설정 라인 끝-->
							</ul>
						</div>
					</div>
					<div class="sMypageAccount">
						<h2 class="sMypageSubTitle">로그인 계정</h2>
						<div class="sMypageAccountCont">
							<div class="sMypageAccountItem _phoneTextPanel"
								style="display: none;"></div>
							<div class="sMypageAccountItem _phoneActionPanel">
								<h3 class="label">휴대폰 번호</h3>
								<!-- 휴대폰 번호 선택 -->
								<div class="content">
									<div class="uSelect">
										<!--국가번호 선택 -->
										<select class="_selectCountryCode" title="국가 번호 선택"
											style="width: 101px">
											<option value="" class="hide">선택</option>

											<option value="82" data-regioncode="KR" data-text="대한민국 82"
												data-selected-text="+82">대한민국 82</option>

											<option value="233" data-regioncode="GH" data-text="가나 233"
												data-selected-text="+233">가나 233</option>

											<option value="241" data-regioncode="GA" data-text="가봉 241"
												data-selected-text="+241">가봉 241</option>

											<option value="592" data-regioncode="GY" data-text="가이아나 592"
												data-selected-text="+592">가이아나 592</option>

											<option value="220" data-regioncode="GM" data-text="감비아 220"
												data-selected-text="+220">감비아 220</option>

											<option value="502" data-regioncode="GT" data-text="과테말라 502"
												data-selected-text="+502">과테말라 502</option>

											<option value="1" data-regioncode="GU" data-text="괌 1"
												data-selected-text="+1">괌 1</option>

											<option value="1473" data-regioncode="GD"
												data-text="그레나다 1473" data-selected-text="+1473">
												그레나다 1473</option>

											<option value="30" data-regioncode="GR" data-text="그리스 30"
												data-selected-text="+30">그리스 30</option>

											<option value="299" data-regioncode="GL" data-text="그린란드 299"
												data-selected-text="+299">그린란드 299</option>

											<option value="224" data-regioncode="GN" data-text="기니 224"
												data-selected-text="+224">기니 224</option>

											<option value="245" data-regioncode="GW"
												data-text="기니비사우 245" data-selected-text="+245">
												기니비사우 245</option>

											<option value="264" data-regioncode="NA" data-text="나미비아 264"
												data-selected-text="+264">나미비아 264</option>

											<option value="674" data-regioncode="NR" data-text="나우루 674"
												data-selected-text="+674">나우루 674</option>

											<option value="234" data-regioncode="NG"
												data-text="나이지리아 234" data-selected-text="+234">
												나이지리아 234</option>

											<option value="211" data-regioncode="SS" data-text="남수단 211"
												data-selected-text="+211">남수단 211</option>

											<option value="27" data-regioncode="ZA"
												data-text="남아프리카공화국 27" data-selected-text="+27">
												남아프리카공화국 27</option>

											<option value="31" data-regioncode="NL" data-text="네덜란드 31"
												data-selected-text="+31">네덜란드 31</option>

											<option value="599" data-regioncode="AN"
												data-text="네덜란드령 안틸레스 599" data-selected-text="+599">
												네덜란드령 안틸레스 599</option>

											<option value="977" data-regioncode="NP" data-text="네팔 977"
												data-selected-text="+977">네팔 977</option>

											<option value="47" data-regioncode="NO" data-text="노르웨이 47"
												data-selected-text="+47">노르웨이 47</option>

											<option value="64" data-regioncode="NZ" data-text="뉴질랜드 64"
												data-selected-text="+64">뉴질랜드 64</option>

											<option value="683" data-regioncode="NU" data-text="니우에 683"
												data-selected-text="+683">니우에 683</option>

											<option value="227" data-regioncode="NE" data-text="니제르 227"
												data-selected-text="+227">니제르 227</option>

											<option value="505" data-regioncode="NI" data-text="니카라과 505"
												data-selected-text="+505">니카라과 505</option>

											<option value="886" data-regioncode="TW" data-text="대만 886"
												data-selected-text="+886">대만 886</option>

											<option value="45" data-regioncode="DK" data-text="덴마크 45"
												data-selected-text="+45">덴마크 45</option>

											<option value="1809" data-regioncode="DO"
												data-text="도미니카공화국 1809" data-selected-text="+1809">
												도미니카공화국 1809</option>

											<option value="1767" data-regioncode="DM"
												data-text="도미니카연방 1767" data-selected-text="+1767">
												도미니카연방 1767</option>

											<option value="49" data-regioncode="DE" data-text="독일 49"
												data-selected-text="+49">독일 49</option>

											<option value="670" data-regioncode="TL" data-text="동티모르 670"
												data-selected-text="+670">동티모르 670</option>

											<option value="856" data-regioncode="LA" data-text="라오스 856"
												data-selected-text="+856">라오스 856</option>

											<option value="231" data-regioncode="LR"
												data-text="라이베리아 231" data-selected-text="+231">
												라이베리아 231</option>

											<option value="371" data-regioncode="LV" data-text="라트비아 371"
												data-selected-text="+371">라트비아 371</option>

											<option value="7" data-regioncode="RU" data-text="러시아 7"
												data-selected-text="+7">러시아 7</option>

											<option value="961" data-regioncode="LB" data-text="레바논 961"
												data-selected-text="+961">레바논 961</option>

											<option value="266" data-regioncode="LS" data-text="레소토 266"
												data-selected-text="+266">레소토 266</option>

											<option value="40" data-regioncode="RO" data-text="루마니아 40"
												data-selected-text="+40">루마니아 40</option>

											<option value="352" data-regioncode="LU"
												data-text="룩셈부르크 352" data-selected-text="+352">
												룩셈부르크 352</option>

											<option value="250" data-regioncode="RW" data-text="르완다 250"
												data-selected-text="+250">르완다 250</option>

											<option value="218" data-regioncode="LY" data-text="리비아 218"
												data-selected-text="+218">리비아 218</option>

											<option value="262" data-regioncode="YT" data-text="리유니온 262"
												data-selected-text="+262">리유니온 262</option>

											<option value="370" data-regioncode="LT"
												data-text="리투아니아 370" data-selected-text="+370">
												리투아니아 370</option>

											<option value="423" data-regioncode="LI"
												data-text="리히텐슈타인 423" data-selected-text="+423">
												리히텐슈타인 423</option>

											<option value="261" data-regioncode="MG"
												data-text="마다가스카르 261" data-selected-text="+261">
												마다가스카르 261</option>

											<option value="596" data-regioncode="MQ"
												data-text="마르티니크 596" data-selected-text="+596">
												마르티니크 596</option>

											<option value="692" data-regioncode="MH"
												data-text="마셜 제도 692" data-selected-text="+692">마셜
												제도 692</option>

											<option value="691" data-regioncode="FM"
												data-text="마이크로네시아 691" data-selected-text="+691">
												마이크로네시아 691</option>

											<option value="853" data-regioncode="MO" data-text="마카오 853"
												data-selected-text="+853">마카오 853</option>

											<option value="389" data-regioncode="MK"
												data-text="마케도니아 389" data-selected-text="+389">
												마케도니아 389</option>

											<option value="265" data-regioncode="MW" data-text="말라위 265"
												data-selected-text="+265">말라위 265</option>

											<option value="60" data-regioncode="MY" data-text="말레이시아 60"
												data-selected-text="+60">말레이시아 60</option>

											<option value="223" data-regioncode="ML" data-text="말리 223"
												data-selected-text="+223">말리 223</option>

											<option value="52" data-regioncode="MX" data-text="멕시코 52"
												data-selected-text="+52">멕시코 52</option>

											<option value="377" data-regioncode="MC" data-text="모나코 377"
												data-selected-text="+377">모나코 377</option>

											<option value="212" data-regioncode="MA" data-text="모로코 212"
												data-selected-text="+212">모로코 212</option>

											<option value="230" data-regioncode="MU" data-text="모리셔스 230"
												data-selected-text="+230">모리셔스 230</option>

											<option value="258" data-regioncode="MZ" data-text="모잠비크 258"
												data-selected-text="+258">모잠비크 258</option>

											<option value="382" data-regioncode="ME"
												data-text="몬테네그로 382" data-selected-text="+382">
												몬테네그로 382</option>

											<option value="373" data-regioncode="MD" data-text="몰도바 373"
												data-selected-text="+373">몰도바 373</option>

											<option value="960" data-regioncode="MV" data-text="몰디브 960"
												data-selected-text="+960">몰디브 960</option>

											<option value="356" data-regioncode="MT" data-text="몰타 356"
												data-selected-text="+356">몰타 356</option>

											<option value="976" data-regioncode="MN" data-text="몽골 976"
												data-selected-text="+976">몽골 976</option>

											<option value="1" data-regioncode="US" data-text="미국 1"
												data-selected-text="+1">미국 1</option>

											<option value="1340" data-regioncode="VI"
												data-text="미국령 버진아일랜드 1340" data-selected-text="+1340">
												미국령 버진아일랜드 1340</option>

											<option value="1684" data-regioncode="AS"
												data-text="미국령 사모아 1684" data-selected-text="+1684">
												미국령 사모아 1684</option>

											<option value="95" data-regioncode="MM" data-text="미얀마 95"
												data-selected-text="+95">미얀마 95</option>

											<option value="678" data-regioncode="VU" data-text="바누아투 678"
												data-selected-text="+678">바누아투 678</option>

											<option value="973" data-regioncode="BH" data-text="바레인 973"
												data-selected-text="+973">바레인 973</option>

											<option value="1246" data-regioncode="BB"
												data-text="바베이도스 1246" data-selected-text="+1246">
												바베이도스 1246</option>

											<option value="39" data-regioncode="VA" data-text="바티칸 39"
												data-selected-text="+39">바티칸 39</option>

											<option value="1242" data-regioncode="BS"
												data-text="바하마 1242" data-selected-text="+1242">
												바하마 1242</option>

											<option value="880" data-regioncode="BD"
												data-text="방글라데시 880" data-selected-text="+880">
												방글라데시 880</option>

											<option value="1441" data-regioncode="BM"
												data-text="버뮤다 1441" data-selected-text="+1441">
												버뮤다 1441</option>

											<option value="229" data-regioncode="BJ" data-text="베냉 229"
												data-selected-text="+229">베냉 229</option>

											<option value="58" data-regioncode="VE" data-text="베네수엘라 58"
												data-selected-text="+58">베네수엘라 58</option>

											<option value="84" data-regioncode="VN" data-text="베트남 84"
												data-selected-text="+84">베트남 84</option>

											<option value="32" data-regioncode="BE" data-text="벨기에 32"
												data-selected-text="+32">벨기에 32</option>

											<option value="375" data-regioncode="BY" data-text="벨라루스 375"
												data-selected-text="+375">벨라루스 375</option>

											<option value="501" data-regioncode="BZ" data-text="벨리즈 501"
												data-selected-text="+501">벨리즈 501</option>

											<option value="387" data-regioncode="BA"
												data-text="보스니아-헤르체고비나 387" data-selected-text="+387">
												보스니아-헤르체고비나 387</option>

											<option value="267" data-regioncode="BW" data-text="보츠와나 267"
												data-selected-text="+267">보츠와나 267</option>

											<option value="591" data-regioncode="BO" data-text="볼리비아 591"
												data-selected-text="+591">볼리비아 591</option>

											<option value="257" data-regioncode="BI" data-text="부룬디 257"
												data-selected-text="+257">부룬디 257</option>

											<option value="226" data-regioncode="BF"
												data-text="부르키나파소 226" data-selected-text="+226">
												부르키나파소 226</option>

											<option value="975" data-regioncode="BT" data-text="부탄 975"
												data-selected-text="+975">부탄 975</option>

											<option value="1670" data-regioncode="MP"
												data-text="북마리아나 1670" data-selected-text="+1670">
												북마리아나 1670</option>

											<option value="1" data-regioncode="SP" data-text="북마리아나제도 1"
												data-selected-text="+1">북마리아나제도 1</option>

											<option value="359" data-regioncode="BG" data-text="불가리아 359"
												data-selected-text="+359">불가리아 359</option>

											<option value="55" data-regioncode="BR" data-text="브라질 55"
												data-selected-text="+55">브라질 55</option>

											<option value="673" data-regioncode="BN" data-text="브루나이 673"
												data-selected-text="+673">브루나이 673</option>

											<option value="685" data-regioncode="WS" data-text="사모아 685"
												data-selected-text="+685">사모아 685</option>

											<option value="966" data-regioncode="SA"
												data-text="사우디아라비아 966" data-selected-text="+966">
												사우디아라비아 966</option>

											<option value="357" data-regioncode="CY"
												data-text="사이프러스 357" data-selected-text="+357">
												사이프러스 357</option>

											<option value="378" data-regioncode="SM" data-text="산마리노 378"
												data-selected-text="+378">산마리노 378</option>

											<option value="239" data-regioncode="ST"
												data-text="상투메프린시페 239" data-selected-text="+239">
												상투메프린시페 239</option>

											<option value="221" data-regioncode="SN" data-text="세네갈 221"
												data-selected-text="+221">세네갈 221</option>

											<option value="381" data-regioncode="RS" data-text="세르비아 381"
												data-selected-text="+381">세르비아 381</option>

											<option value="248" data-regioncode="SC" data-text="세이셸 248"
												data-selected-text="+248">세이셸 248</option>

											<option value="1758" data-regioncode="LC"
												data-text="세인트루시아 1758" data-selected-text="+1758">
												세인트루시아 1758</option>

											<option value="590" data-regioncode="BL"
												data-text="세인트마틴 590" data-selected-text="+590">
												세인트마틴 590</option>

											<option value="252" data-regioncode="SO" data-text="소말리아 252"
												data-selected-text="+252">소말리아 252</option>

											<option value="677" data-regioncode="SB"
												data-text="솔로몬제도 677" data-selected-text="+677">
												솔로몬제도 677</option>

											<option value="249" data-regioncode="SD" data-text="수단 249"
												data-selected-text="+249">수단 249</option>

											<option value="597" data-regioncode="SR" data-text="수리남 597"
												data-selected-text="+597">수리남 597</option>

											<option value="94" data-regioncode="LK" data-text="스리랑카 94"
												data-selected-text="+94">스리랑카 94</option>

											<option value="268" data-regioncode="SZ"
												data-text="스와질랜드 268" data-selected-text="+268">
												스와질랜드 268</option>

											<option value="46" data-regioncode="SE" data-text="스웨덴 46"
												data-selected-text="+46">스웨덴 46</option>

											<option value="41" data-regioncode="CH" data-text="스위스 41"
												data-selected-text="+41">스위스 41</option>

											<option value="34" data-regioncode="ES" data-text="스페인 34"
												data-selected-text="+34">스페인 34</option>

											<option value="421" data-regioncode="SK"
												data-text="슬로바키아 421" data-selected-text="+421">
												슬로바키아 421</option>

											<option value="386" data-regioncode="SI"
												data-text="슬로베니아 386" data-selected-text="+386">
												슬로베니아 386</option>

											<option value="963" data-regioncode="SY" data-text="시리아 963"
												data-selected-text="+963">시리아 963</option>

											<option value="232" data-regioncode="SL"
												data-text="시에라리온 232" data-selected-text="+232">
												시에라리온 232</option>

											<option value="65" data-regioncode="SG" data-text="싱가포르 65"
												data-selected-text="+65">싱가포르 65</option>

											<option value="971" data-regioncode="AE"
												data-text="아랍에미레이트 971" data-selected-text="+971">
												아랍에미레이트 971</option>

											<option value="297" data-regioncode="AW" data-text="아루바 297"
												data-selected-text="+297">아루바 297</option>

											<option value="374" data-regioncode="AM"
												data-text="아르메니아 374" data-selected-text="+374">
												아르메니아 374</option>

											<option value="54" data-regioncode="AR" data-text="아르헨티나 54"
												data-selected-text="+54">아르헨티나 54</option>

											<option value="354" data-regioncode="IS"
												data-text="아이슬란드 354" data-selected-text="+354">
												아이슬란드 354</option>

											<option value="509" data-regioncode="HT" data-text="아이티 509"
												data-selected-text="+509">아이티 509</option>

											<option value="353" data-regioncode="IE" data-text="아일랜드 353"
												data-selected-text="+353">아일랜드 353</option>

											<option value="994" data-regioncode="AZ"
												data-text="아제르바이잔 994" data-selected-text="+994">
												아제르바이잔 994</option>

											<option value="93" data-regioncode="AF" data-text="아프가니스탄 93"
												data-selected-text="+93">아프가니스탄 93</option>

											<option value="376" data-regioncode="AD" data-text="안도라 376"
												data-selected-text="+376">안도라 376</option>

											<option value="1268" data-regioncode="AG"
												data-text="안티구아바부다 1268" data-selected-text="+1268">
												안티구아바부다 1268</option>

											<option value="355" data-regioncode="AL" data-text="알바니아 355"
												data-selected-text="+355">알바니아 355</option>

											<option value="213" data-regioncode="DZ" data-text="알제리 213"
												data-selected-text="+213">알제리 213</option>

											<option value="244" data-regioncode="AO" data-text="앙골라 244"
												data-selected-text="+244">앙골라 244</option>

											<option value="291" data-regioncode="ER"
												data-text="에리트리아 291" data-selected-text="+291">
												에리트리아 291</option>

											<option value="372" data-regioncode="EE"
												data-text="에스토니아 372" data-selected-text="+372">
												에스토니아 372</option>

											<option value="593" data-regioncode="EC" data-text="에콰도르 593"
												data-selected-text="+593">에콰도르 593</option>

											<option value="503" data-regioncode="SV"
												data-text="엘살바도르 503" data-selected-text="+503">
												엘살바도르 503</option>

											<option value="44" data-regioncode="GB" data-text="영국 44"
												data-selected-text="+44">영국 44</option>

											<option value="967" data-regioncode="YE" data-text="예멘 967"
												data-selected-text="+967">예멘 967</option>

											<option value="968" data-regioncode="OM" data-text="오만 968"
												data-selected-text="+968">오만 968</option>

											<option value="43" data-regioncode="AT" data-text="오스트리아 43"
												data-selected-text="+43">오스트리아 43</option>

											<option value="504" data-regioncode="HN" data-text="온두라스 504"
												data-selected-text="+504">온두라스 504</option>

											<option value="962" data-regioncode="JO" data-text="요르단 962"
												data-selected-text="+962">요르단 962</option>

											<option value="256" data-regioncode="UG" data-text="우간다 256"
												data-selected-text="+256">우간다 256</option>

											<option value="598" data-regioncode="UY" data-text="우루과이 598"
												data-selected-text="+598">우루과이 598</option>

											<option value="998" data-regioncode="UZ"
												data-text="우즈베키스탄 998" data-selected-text="+998">
												우즈베키스탄 998</option>

											<option value="380" data-regioncode="UA"
												data-text="우크라이나 380" data-selected-text="+380">
												우크라이나 380</option>

											<option value="251" data-regioncode="ET"
												data-text="이디오피아 251" data-selected-text="+251">
												이디오피아 251</option>

											<option value="964" data-regioncode="IQ" data-text="이라크 964"
												data-selected-text="+964">이라크 964</option>

											<option value="98" data-regioncode="IR" data-text="이란 98"
												data-selected-text="+98">이란 98</option>

											<option value="972" data-regioncode="IL" data-text="이스라엘 972"
												data-selected-text="+972">이스라엘 972</option>

											<option value="20" data-regioncode="EG" data-text="이집트 20"
												data-selected-text="+20">이집트 20</option>

											<option value="39" data-regioncode="IT" data-text="이탈리아 39"
												data-selected-text="+39">이탈리아 39</option>

											<option value="91" data-regioncode="IN" data-text="인도 91"
												data-selected-text="+91">인도 91</option>

											<option value="62" data-regioncode="ID" data-text="인도네시아 62"
												data-selected-text="+62">인도네시아 62</option>

											<option value="81" data-regioncode="JP" data-text="일본 81"
												data-selected-text="+81">일본 81</option>

											<option value="1876" data-regioncode="JM"
												data-text="자메이카 1876" data-selected-text="+1876">
												자메이카 1876</option>

											<option value="240" data-regioncode="GQ" data-text="적도기니 240"
												data-selected-text="+240">적도기니 240</option>

											<option value="995" data-regioncode="GE" data-text="조지아 995"
												data-selected-text="+995">조지아 995</option>

											<option value="86" data-regioncode="CN" data-text="중국 86"
												data-selected-text="+86">중국 86</option>

											<option value="236" data-regioncode="CF"
												data-text="중앙아프리카공화국 236" data-selected-text="+236">
												중앙아프리카공화국 236</option>

											<option value="253" data-regioncode="DJ" data-text="지부티 253"
												data-selected-text="+253">지부티 253</option>

											<option value="263" data-regioncode="ZW" data-text="짐바브웨 263"
												data-selected-text="+263">짐바브웨 263</option>

											<option value="235" data-regioncode="TD" data-text="차드 235"
												data-selected-text="+235">차드 235</option>

											<option value="420" data-regioncode="CZ" data-text="체코 420"
												data-selected-text="+420">체코 420</option>

											<option value="56" data-regioncode="CL" data-text="칠레 56"
												data-selected-text="+56">칠레 56</option>

											<option value="237" data-regioncode="CM" data-text="카메룬 237"
												data-selected-text="+237">카메룬 237</option>

											<option value="7" data-regioncode="KZ" data-text="카자흐스탄 7"
												data-selected-text="+7">카자흐스탄 7</option>

											<option value="974" data-regioncode="QA" data-text="카타르 974"
												data-selected-text="+974">카타르 974</option>

											<option value="238" data-regioncode="CV"
												data-text="카포베르데 238" data-selected-text="+238">
												카포베르데 238</option>

											<option value="855" data-regioncode="KH" data-text="캄보디아 855"
												data-selected-text="+855">캄보디아 855</option>

											<option value="1" data-regioncode="CA" data-text="캐나다 1"
												data-selected-text="+1">캐나다 1</option>

											<option value="254" data-regioncode="KE" data-text="케냐 254"
												data-selected-text="+254">케냐 254</option>

											<option value="269" data-regioncode="KM" data-text="코모로 269"
												data-selected-text="+269">코모로 269</option>

											<option value="383" data-regioncode="XK" data-text="코소보 383"
												data-selected-text="+383">코소보 383</option>

											<option value="506" data-regioncode="CR"
												data-text="코스타리카 506" data-selected-text="+506">
												코스타리카 506</option>

											<option value="225" data-regioncode="CI"
												data-text="코트디부아르 225" data-selected-text="+225">
												코트디부아르 225</option>

											<option value="57" data-regioncode="CO" data-text="콜롬비아 57"
												data-selected-text="+57">콜롬비아 57</option>

											<option value="242" data-regioncode="CG" data-text="콩고 242"
												data-selected-text="+242">콩고 242</option>

											<option value="243" data-regioncode="CD"
												data-text="콩고민주공화국 243" data-selected-text="+243">
												콩고민주공화국 243</option>

											<option value="53" data-regioncode="CU" data-text="쿠바 53"
												data-selected-text="+53">쿠바 53</option>

											<option value="965" data-regioncode="KW" data-text="쿠웨이트 965"
												data-selected-text="+965">쿠웨이트 965</option>

											<option value="682" data-regioncode="CK"
												data-text="쿡아일랜드 682" data-selected-text="+682">
												쿡아일랜드 682</option>

											<option value="385" data-regioncode="HR"
												data-text="크로아티아 385" data-selected-text="+385">
												크로아티아 385</option>

											<option value="996" data-regioncode="KG" data-text="키르기즈 996"
												data-selected-text="+996">키르기즈 996</option>

											<option value="686" data-regioncode="KI" data-text="키리바시 686"
												data-selected-text="+686">키리바시 686</option>

											<option value="992" data-regioncode="TJ"
												data-text="타지키스탄 992" data-selected-text="+992">
												타지키스탄 992</option>

											<option value="255" data-regioncode="TZ" data-text="탄자니아 255"
												data-selected-text="+255">탄자니아 255</option>

											<option value="66" data-regioncode="TH" data-text="태국 66"
												data-selected-text="+66">태국 66</option>

											<option value="90" data-regioncode="TR" data-text="터키 90"
												data-selected-text="+90">터키 90</option>

											<option value="228" data-regioncode="TG" data-text="토고 228"
												data-selected-text="+228">토고 228</option>

											<option value="676" data-regioncode="TO" data-text="통가 676"
												data-selected-text="+676">통가 676</option>

											<option value="993" data-regioncode="TM"
												data-text="투르크메니스탄 993" data-selected-text="+993">
												투르크메니스탄 993</option>

											<option value="688" data-regioncode="TV" data-text="투발루 688"
												data-selected-text="+688">투발루 688</option>

											<option value="216" data-regioncode="TN" data-text="튀니지 216"
												data-selected-text="+216">튀니지 216</option>

											<option value="1868" data-regioncode="TT"
												data-text="트리니다드토바고 1868" data-selected-text="+1868">
												트리니다드토바고 1868</option>

											<option value="507" data-regioncode="PA" data-text="파나마 507"
												data-selected-text="+507">파나마 507</option>

											<option value="595" data-regioncode="PY" data-text="파라과이 595"
												data-selected-text="+595">파라과이 595</option>

											<option value="92" data-regioncode="PK" data-text="파키스탄 92"
												data-selected-text="+92">파키스탄 92</option>

											<option value="675" data-regioncode="PG"
												data-text="파푸아뉴기니 675" data-selected-text="+675">
												파푸아뉴기니 675</option>

											<option value="680" data-regioncode="PW" data-text="팔라우 680"
												data-selected-text="+680">팔라우 680</option>

											<option value="298" data-regioncode="FO" data-text="패로제도 298"
												data-selected-text="+298">패로제도 298</option>

											<option value="51" data-regioncode="PE" data-text="페루 51"
												data-selected-text="+51">페루 51</option>

											<option value="351" data-regioncode="PT" data-text="포르투갈 351"
												data-selected-text="+351">포르투갈 351</option>

											<option value="48" data-regioncode="PL" data-text="폴란드 48"
												data-selected-text="+48">폴란드 48</option>

											<option value="1787" data-regioncode="PR"
												data-text="푸에르토리코 1787" data-selected-text="+1787">
												푸에르토리코 1787</option>

											<option value="33" data-regioncode="FR" data-text="프랑스 33"
												data-selected-text="+33">프랑스 33</option>

											<option value="594" data-regioncode="GF"
												data-text="프랑스령 기아나 594" data-selected-text="+594">
												프랑스령 기아나 594</option>

											<option value="679" data-regioncode="FJ" data-text="피지 679"
												data-selected-text="+679">피지 679</option>

											<option value="358" data-regioncode="FI" data-text="핀란드 358"
												data-selected-text="+358">핀란드 358</option>

											<option value="63" data-regioncode="PH" data-text="필리핀 63"
												data-selected-text="+63">필리핀 63</option>

											<option value="36" data-regioncode="HU" data-text="헝가리 36"
												data-selected-text="+36">헝가리 36</option>

											<option value="61" data-regioncode="AU" data-text="호주 61"
												data-selected-text="+61">호주 61</option>

											<option value="852" data-regioncode="HK" data-text="홍콩 852"
												data-selected-text="+852">홍콩 852</option>

										</select>
										<!--국가번호 선택 -->
									</div>
									<!-- 휴대폰 번호 값 직접 입력 -->
									<div class="uInput -simpleLine phoneNumber"
										style="width: 146px;">
										<label class="gSrOnly" for="hp_view905">휴대폰 번호</label> <input
											type="text" class="_inputPhoneNumber" id="hp_view905"
											placeholder="휴대폰 번호" value="">
									</div>
									<!--휴대폰 번호 수집하는 경고 문구 출력 -->
									<button type="button" class="infoIcon -help" id=""
										style="cursor: pointer;">
										<img src="${pageContext.request.contextPath}/assets/images/search.png"
											style="background-color: transparent;">
									</button>
									<!--휴대폰 번호 수집하는 경고 문구 출력 -->
								</div>
								<!-- 휴대폰 번호 선택  끝-->
								<div class="btn-phone">
									<a href="#" class="uButton -sizeS -confirm3"
										id="_btnPhoneNumberChan">확인</a>
									<!-- 취소시 입력한 데이터를 넣지 않음. 초기화-->
									<a href="#" class="uButton -sizeS -confirm3 _btnPhoneNumberDel">취소</a>
								</div>
								<!-- 휴대폰 번호 입력한 데이터를 전송 -->
							</div>
							<!-- 휴대폰 동의문구 출력-->
							<p class="uTableList">
								<span class="cell label -desc -help">휴대폰 번호는 로그인을 위해
									저장되며, 사이트 이용기간 동안 보관되는 것에 동의합니다.</span>
							</p>
							<!-- 휴대폰 동의문구 출력-->
							<div class="sMypageAccountItem _emailTextPanel"
								style="display: none;">
								<div class="label">이메일</div>
								<div class="content"></div>
								<div class="btn">
									<a href="#" class="uButton -sizeS -confirm3 _btnChangeEmail">변경</a>
								</div>
							</div>
							<div class="sMypageAccountItem _emailActionPanel">
								<label class="label" for="email_view630">이메일</label>
								<div class="content">
									<div class="uInput -simpleLine" style="width: 259px;">
										<!-- 이메일 주소 입력 -->
										<input type="text" id="email_view630" placeholder="이메일 주소 입력"
											value="" class="_inputEmail">
										<!-- 이메일 주소 입력 -->
									</div>
									<span class="infoIcon -error"> <span class="gSrOnly">설정값
											오류</span>
									</span>
								</div>
								<!-- 입력한 이메일 값을 DB로 전송-->
								<div class="btn">
									<button type="submit" class="uButton -sizeS -confirm"
										id="_btnUpdateEmail">확인</button>
								</div>
								<!-- 입력한 이메일 값을 DB로 전송-->
							</div>
							<p class="uTableList">
								<!-- 이메일 경고문구 출력 -->
								<span class="cell label -desc">이메일 주소는 로그인을 위해 저장되며, 사이트
									이용기간 동안 보관되는 것에 동의합니다.</span>
							</p>
							<!-- 비밀번호 변경 창 -->
							<div class="sMypageAccountItem password">
								비밀번호
								<fieldset>
									<input type="password" placeholder="비밀번호 입력" id="password"
										required> <input type="password"
										placeholder="비밀번호 재확인" id="confirm_password" required>
									<button type="submit" class="pure-button pure-button-primary "
										style="height: 26px; border: solid 1px #ccc; line-height: 26px; min-width: 41px; padding: 0 10px; font-size: 12px; display: block; justify-content: space-between;">변경</button>
								</fieldset>
								<div style="padding-right: 30px; text-align: right;"></div>
								<!-- 변경 페이지로 이동 -->
							</div>
						</div>
					</div>
					<div class="sMypageConnect">
						<div class="sMypageConntetTitleBox">
							<h2 class="sMypageInnetTitle">연결된 서비스</h2>
							<dl class="uHelpGuid -up gInlingBlock">
								<dt>
									<button type="button" class="_btnHelpGuide">
										<span class="gSrOnly">도움말</span>
									</button>
								</dt>
							</dl>
						</div>
						<!-- 계정 연동 서비스 -->

						<!-- 첫번째 연동 -->
						<div class="sMypageConnectCont">
							<div class="sMypageConnectItem">
								<div class="icon">
									<span class="naver"> <span class="gSrOnly">첫번째 연동</span>
									</span>
								</div>
								<img class="id_icon"
									src="${pageContext.request.contextPath}/assets/images/icon_login_naver.png">
								<div class="content off">아이디로 연결할 수 있습니다.</div>
								<div class="btn">
									<button type="submit"
										class="uButton -sizeS -confirm3 _btnConnectFirstSite">
										<a href="#" id="first_id_connect_navar">연결하기</a>
									</button>
								</div>
							</div>
							<!-- 두번째 연동 -->
							<div class="sMypageConnectItem">
								<div class="icon">
									<span class="kakao"> <span class="gSrOnly">두번째 연동</span>
									</span>
								</div>
								<img class="id_icon"
									src="${pageContext.request.contextPath}/assets/images/icon_login_kakao.png">
								<div class="content off">아이디로 연결할 수 있습니다.</div>
								<div class="btn">
									<button type="submit"
										class="uButton -sizeS -confirm3 _btnConnectFirstSite">
										<a href="#" id="first_id_connect_kakao">연결하기</a>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 소속 인증 서비스 -->
				<div class="sMypageConnectOrganization">
					<div class="sMypageConntetTitleBox">
						<h2>소속 인증</h2>
					</div>
					<div class="sMypageConnectDocumnet">
						<div class="icon">
							<span class=""> <span class="gSrOnly">첫번째 연동</span>
							</span>
						</div>
						<img class="id_icon" src=${pageContext.request.contextPath}/assets/images/engine-warning.png">
						<div class="content off">증명서류를 제출할 수 있습니다.</div>
					</div>
					<div class="btn">
						<!-- 보낼 파일을 저장함 -->
						<input type="file" class="document_file">
						<!-- 해당 파일을 DB로 보냄-->
						<button type="submit"
							class="uButton -sizeS -confirm3 _btnConnectDocument">제출하기</button>
					</div>
				</div>
			</section>
		</main>
	</div>
	<div class="sideRight" style="display: none;"></div>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
	<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
</div>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mypage.js"></script>
</html>