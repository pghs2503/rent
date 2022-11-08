<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
	width: 100%;
	margin: 0px;
	margin: auto;
}

li {
	list-style-type: none;
}

header {
	width: 1600px;
	height: 90px;
	margin: auto;
	/* background: red; */
	padding-top: 15px;
}

header #left {
	width: 240px;
	height: 50px;
	float: left;
	/* background: blue; */
	padding-top: 20px;
	padding-left: 60px;
	
}

header #mid {
	float: left;
	width: 1000px;
	height: 80px;
	/* background: green; */
}

header #mid>ul>li {
	width: 217px;
	height: 60px;
	/* background: skyblue; */
	display: inline-block;
	margin-left: -40px;
	padding-top: 20px;
	padding-left: 60px;
	font-size: 19px;
	font-weight: 700;
}

header #right {
	width: 300px;
	height: 80px;
	float: right;
	/* background: purple; */
}

header #right>ul>li {
	display: inline-block;
	width: 130px;
	height: 60px;
	margin-left: -40px;
	padding-top: 13px;
	padding-left: 13px;
	/* background: skyblue; */
}

header #mid #menu .submenu:nth-child(1) {
	position: relative;
}
header #mid #menu .submenu:nth-child(2) {
	position: relative;
}
header #mid #menu .submenu:nth-child(3) {
	position: relative;
}
header #mid #menu .submenu:nth-child(4) {
	position: relative;
}

header #mid #menu  .right_submenu:nth-child(1) {
	width: 1600px;
	height: 300px;
	float: left;
	/* background: gray; */
	position: absolute;
	top: 70px;
	left: -230px;
	display: none; 
	background: white;
}									
header #mid #menu   .right_submenu:nth-child(2) {
	width: 1600px;
	height: 300px;
	float: left;
	/* background: gray; */
	position: absolute;
	top: 70px;
	/* left: -300px; */
	display: none;
	background: white;

}	
header #mid #menu  .right_submenu:nth-child(3) {
	width: 1600px;
	height: 300px;
	float: left;
	/* background: gray; */
	position: absolute;
	top: 70px;
	/* left: -300px; */
	display: none;
	background: white;

}			
header #mid #menu  .right_submenu:nth-child(4) {
	width: 1600px;
	height: 300px;
	float: left;
	/* background: gray; */
	position: absolute;
	top: 70px;
	/* left: -300px; */
	display: none;
	background: white;
}					


header #mid #menu .submenu:nth-child(1)  .right_submenu  .right_submenu_left {
	width: 268px;
	height: 285px;
	float: left;
	border-right: 2px solid #c0c0c0;
	/* background: yellow; */
	/*  display: none;  */
	padding-left: 30px;
	padding-top: 15px;
}									
header #mid #menu .submenu:nth-child(2) .right_submenu .right_submenu_left {
	width: 268px;
	height: 285px;
	float: left;
	border-right: 2px solid #c0c0c0;
	/* background: yellow; */
	/* display: none;   */
	padding-left: 30px;
	padding-top: 15px;
	
}	
header #mid #menu .submenu:nth-child(3) .right_submenu .right_submenu_left {
	width: 268px;
	height: 285px;
	float: left;
	border-right: 2px solid #c0c0c0;
	/* background: yellow; */
	/* display: none;   */
	padding-left: 30px;
	padding-top: 15px;
	
}		
header #mid #menu .submenu:nth-child(4) .right_submenu .right_submenu_left {
	width: 268px;
	height: 285px;
	float: left;
	border-right: 2px solid #c0c0c0;
	/* background: yellow; */
	/* display: none;   */
	padding-left: 30px;
	padding-top: 15px;
	
}										



header #mid #menu .submenu:nth-child(1) > .right_submenu > .right_submenu_right {
	float: left;
	width: 1200px;
	height: 300px;
}
header #mid #menu .submenu:nth-child(2) > .right_submenu > .right_submenu_right {
	float: left;
	width: 1200px;
	height: 300px;
}
header #mid #menu .submenu:nth-child(3) > .right_submenu > .right_submenu_right {
	float: left;
	width: 1200px;
	height: 300px;
}
header #mid #menu .submenu:nth-child(4) > .right_submenu > .right_submenu_right {
	float: left;
	width: 1200px;
	height: 300px;
}

#mid #menu .submenu:nth-child(1) > .right_submenu > .right_submenu_right ul {
	display: inline-block;
}
#mid #menu .submenu:nth-child(2) > .right_submenu > .right_submenu_right ul {
	display: inline-block;
}
#mid #menu .submenu:nth-child(3) > .right_submenu > .right_submenu_right ul {
	display: inline-block;
}
#mid #menu .submenu:nth-child(4) > .right_submenu > .right_submenu_right ul {
	display: inline-block;
}
#mid #menu .submenu .right_submenu .right_submenu_right ul li{
	width: 180px;
	height: 36px;
	
}
nav {
	width: 1600px;
	height: 300px;
	margin: auto;
}

#sub {
	width: 1600px;
	height: 400px;
	margin: auto;
	background: orange;
}

#sub #left2 {
	
}

#sub #left2 a {
	color: black;
	font-size: 48px;
	font-weight: 600;
}

#sub #left2 span {
	font-size: 32px;
	font-weight: 300;
	color: #c0c0c0c0;
}


header #right #right_all{
	position: relative;
}
header #right #right_all #jumenu{
	/* background: red; */
	position: absolute;
	width: 1600px;
	height: 600px;
	left: -1335px;
	top: 65px;
	margin: auto;
	display: none;
	background: white;
}
header #right #right_all #jumenu #right_all_left{
	
	width: 1085px;
	height: 585px;	
	/* background: yellow; */
	float: left;
	padding-left: 15px;
	padding-top: 15px;
	
}
header #right #right_all #jumenu #right_all_left ul{
	display: inline-block;
}
header #right #right_all #jumenu #right_all_left ul li{
	width: 150px;
	height: 30px;
}
header #right #right_all #jumenu #right_all_right{
	width: 500px;
	height: 600px;
	/* background: #cccccc; */
	float: left;
}
header #right #right_all #jumenu #right_all_right ul{
	display: inline-block;
}
header #right #right_all #jumenu #right_all_right ul li{
	width: 240px;
	height: 30px;
}
header .fontbold{
	font-size: 14px;	
	font-weight: bold;	
}
header .fontbasic{
	font-size: 12px;
	color: #c0c0c0;
}

footer {
	width: 100%;
	height: 200px;
	background: #3f3f3f;
	margin: auto;
	margin-top: 500px;
}

footer p {
	padding-top: 50px;
	padding-left: 200px;
}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {

	 	$("#mid #menu .submenu").eq(0).mouseover(
				function() {
					$("#mid #menu .submenu .right_submenu").eq(0).css(
							"display", "block");

				});
		$("#mid #menu .submenu").eq(0).mouseout(
				function() {
					$("#mid #menu .submenu .right_submenu").eq(0).css(
							"display", "none");

				});
		$("#mid #menu .submenu").eq(1).mouseover(function() {
			$("#mid #menu .submenu .right_submenu").eq(1).css("display", "block").css("left","-470.5px");
			
		});
		$("#mid #menu .submenu").eq(1).mouseout(function() {
			$("#mid #menu .submenu .right_submenu").eq(1).css("display", "none");
			
		});
		$("#mid #menu .submenu").eq(2).mouseover(function() {
			$("#mid #menu .submenu .right_submenu").eq(2).css("display", "block").css("left","-711px");
		
		});
		$("#mid #menu .submenu").eq(2).mouseout(function() {
			$("#mid #menu .submenu .right_submenu").eq(2).css("display", "none");
		
		});
		$("#mid #menu .submenu").eq(3).mouseover(function() {
			$("#mid #menu .submenu .right_submenu").eq(3).css("display", "block").css("left","-952.5px");
			
		});
		$("#mid #menu .submenu").eq(3).mouseout(function() {
			$("#mid #menu .submenu .right_submenu").eq(3).css("display", "none");
		
		}); 
		/* $("header #right").mouseover(function(){
			$("header #right #right_all #jumenu").css("display","block");
		});
		$("header #right").mouseout(function(){
			$("header #right #right_all #jumenu").css("display","none");
		}); */
		$("header #right").mouseover(function(){
			$("header #right #right_all #jumenu").show();
		});
		$("header #right").mouseout(function(){
			$("header #right #right_all #jumenu").hide();
		});

		
	});
	
	
</script>

 <decorator:head/> 
</head>
 
<body>
	<!-- index.jsp -->
	<header>




	<div id="left">
		<a href="../main/index"> <img src="../resources/img/이젠.png">
		</a>
	</div>

	<div id="mid">

		<ul id="menu">
			
			
			<li class="submenu">단기렌터카
				<div class="right_submenu">
					<div class="right_submenu_left">
					
					<c:if test="${userid==null }">
						<a href="../login/login">로그인</a> <br> <span>해주세요!</span>
					</c:if>
					<c:if test="${userid!=null }">
						<span>${name}님</span> <br> <span>반갑습니다!</span>
					</c:if>	
						
						
					</div>
					<div class="right_submenu_right">
						<ul>
							<li class="fontbold">빠른예약</li>
							<li class="fontbasic">제주렌트</li>
							<li class="fontbasic">내륙렌트</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">단기렌트예약</li>
							<li class="fontbasic">대여 및 요금안내</li>
							<li class="fontbasic">체크인 서비스</li>
							<li class="fontbasic">부가서비스안내</li>
							<li class="fontbasic">회원혜택 안내</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">월간렌트카</li>
							<li class="fontbasic">월간렌트 서비스 안내</li>
							<li class="fontbasic">상담 신청</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">기사포함렌터카</li>
							<li class="fontbasic">기사포함 서비스 안내</li>
							<li class="fontbasic">렌터카 예약 접수</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div>
			</li>
		
		
			<li class="submenu"><a href="../janggi/jang_home" style="color:black;text-decoration:none;">신차 장기렌터카</a>

				<div class="right_submenu">
					
						<div class="right_submenu_left">
						<c:if test="${userid==null }">
						<a href="../login/login">로그인</a> <br> <span>해주세요!</span>
					</c:if>
					<c:if test="${userid!=null }">
						<span>${name}님</span> <br> <span>반갑습니다!</span>
					</c:if>	
					</div>
					<div class="right_submenu_right">

						<ul>
							<li class="fontbold">신차특가</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">다이렉트 견적</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold" style="color:skyblue;">전기차 고민해?</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">장기렌트 서비스 안내</li>
							<li class="fontbasic">개인 장기렌트카</li>
							<li class="fontbasic">법인 장기렌트카</li>
							<li class="fontbasic">전기차 장기렌트카</li>
							<li>&nbsp;</li>
						</ul>				
					</div>
					
					
				</div>
			</li>
			
			<li class="submenu">중고차 장기렌터카

				<div class="right_submenu">
					<div class="right_submenu_left">
					<c:if test="${userid==null }">
						<a href="../login/login">로그인</a> <br> <span>해주세요!</span>
					</c:if>
					<c:if test="${userid!=null }">
						<span>${name}님</span> <br> <span>반갑습니다!</span>
					</c:if>	
					</div>
					<div class="right_submenu_right">
						<ul>
							<li class="fontbold">중고차 장기렌트카</li>
							<li class="fontbasic">중고차 렌트카 안내</li>
							<li class="fontbasic">중고차 검색</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">렌터카 승계서비스</li>
							<li class="fontbasic">렌터카 승계 안내</li>
							<li class="fontbasic">승계 차량 검색</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">내 차 팔기 서비스</li>
							<li class="fontbasic">내 차 팔기 서비스 안내</li>
							<li class="fontbasic">내 차 팔기 신청</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div> 
			</li>
			<li class="submenu">고객지원
 
				<div class="right_submenu">
					<div class="right_submenu_left">
						<c:if test="${userid==null }">
						<a href="../login/login">로그인</a> <br> <span>해주세요!</span>
					</c:if>
					<c:if test="${userid!=null }">
						<span>${name}님</span> <br> <span>반갑습니다!</span>
					</c:if>	
					</div>
					<div class="right_submenu_right">
						<ul>
							<li class="fontbold">공지사항</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">지점 안내</li>
							<li class="fontbasic">전국 지점</li>
							<li class="fontbasic">기사 포함</li>
							<li class="fontbasic">해외 지점</li>
							<li>&nbsp;</li>
						</ul>
						<ul>
							<li class="fontbold">고객센터</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div> 
			</li>
		</ul>

	</div>




	<div id="right">
		<ul>
			<li><img src="../resources/img/log.png" width="35" height="35" onclick="location='../member/mypage'"></li>
			<!-- 감시 장치 아이콘  제작자: Gregor Cresnar - Flaticon -->
			<li id="right_all"><img src="../resources/img/all.png" width="35" height="35">
			<!-- 감시 장치 아이콘  제작자: Gregor Cresnar - Flaticon -->
				<div id="jumenu">
				
				<div id="right_all_left">
				<ul>
					<li class="fontbold">빠른예약</li>
					<li class="fontbasic">제주 렌트</li>
					<li class="fontbasic">내륙 렌트</li>
					<li class="fontbold">단기렌트 서비스 안내</li>
					<li class="fontbasic">대여 및 요금안내</li>
					<li class="fontbasic">체크인 서비스</li>
					<li class="fontbasic">부가서비스안내</li>
					<li class="fontbasic">회원혜택안내</li>
					<li class="fontbold">월간렌터카</li>
					<li class="fontbasic">월간렌트 서비스 안내</li>
					<li class="fontbasic">상담 신청</li>
					<li class="fontbold">기사포함렌터카</li>
					<li class="fontbasic">기사포함 서비스 안내</li>
					<li class="fontbasic">렌터카 예약 접수</li>
					<li class="fontbold">해외렌터카</li>
					<li class="fontbold">사고대차 서비스</li>
					<li>&nbsp;</li>
				</ul>
					<ul>
					<li class="fontbold">신차 특가</li>
					<li class="fontbold">다이렉트 견적</li>
					<li class="fontbold" style="color:skyblue;">전기차 고민해? </li>
					<li class="fontbold">장기렌트 서비스 안내</li>
					<li class="fontbasic">개인 장기 렌터카</li>
					<li class="fontbasic">개인 장기렌터카</li>
					<li class="fontbasic">법인 장기렌터카</li>
					<li class="fontbasic">전기차 장기렌터카</li>
					<li class="fontbold">제휴카드 혜택</li>
					<li class="fontbold">신차장 멤버십</li>
					<li class="fontbold">신차장 친구추천</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
				</ul>
					<ul>
					<li class="fontbold">중고차 장기렌터카</li>
					<li class="fontbasic">중고차렌트 서비스 안내</li>
					<li class="fontbasic">중고차 검색</li>
					<li class="fontbold">렌터카 승계서비스</li>
					<li class="fontbasic">렌터카 승계 안내</li>
					<li class="fontbold">내 차 팔기 서비스</li>
					<li class="fontbasic">내 차 팔기 서비스 안내</li>
					<li class="fontbasic">내 차 팔기 신청</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
				</ul>
					<ul>
					<li class="fontbold">매거진</li>
					<li class="fontbold">이벤트</li>
					<li class="fontbasic">진행중인 이벤트</li>
					<li class="fontbasic">당첨자발표</li>
					<li class="fontbold">제주오토하우스</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
				</ul>
				<ul>
					<li class="fontbold">공지사항</li>
					<li class="fontbold">지점안내</li>
					<li class="fontbasic">전국 지점</li>
					<li class="fontbasic">기사 포함</li>
					<li class="fontbasic">해외 지점</li>
					<li class="fontbold">고객센터</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<c:if test="${userid != 'admin'}">
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>	
					</c:if>
					<c:if test="${userid == 'admin'}">
					<li><a href="../admin/pcode">제조사등록</a></li>
					<li><a href="../admin/code">차등록</a></li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					</c:if>
				</ul>
				</div>
				
				<div id="right_all_right">
					<ul>
						
						<c:if test="${userid==null}">
						<li class="fontbold"><a href="../login/login">로그인</a></li>
						<li class="fontbold"><a href="../member/member_input_info">회원가입</a></li>
						</c:if>
						<c:if test="${userid!=null}">
						<li class="fontbold"><a href="../login/logout">로그아웃</a></li>
						<li class="fontbold"><a href="../member/mypage">마이페이지</a></li>
						</c:if>
						
						<li class="fontbold">예약확인</li>
						<li class="fontbold">계약서조회</li>
						<li class="fontbold">자료제출 </li>
						<li class="fontbold">English service </li>
					</ul>
				</div>
				
				
				</div>
			</li>
		</ul>
	</div>



	</header>


	



  <decorator:body/> 









	<footer>
	<p>
		<span style="color: #d6d6d6; font-size: 16px;"> 회사소개 &nbsp;
			|&nbsp; &nbsp; 대여약관&nbsp; |&nbsp; &nbsp; 이용약관&nbsp; |&nbsp; &nbsp;
			개인정보처리방침 &nbsp; | &nbsp; &nbsp; 고객센터 &nbsp; |&nbsp; &nbsp;사이트맵 </span> <br />
		<br> <br> <span style="color: #d6d6d6; font-size: 12px;">(주)이젠렌터카
			주소 :(10414)경기도 고양시 일산동구 장항동 890-4 마두법조빌딩 9F</span> <br /> <span
			style="color: #d6d6d6; font-size: 12px;"> 사업자 등록번호 :
			123-45-67891</span> <br /> <span style="color: #d6d6d6; font-size: 12px;">
			Copyright (주)이젠렌터카. All Rights Reserved.</span>
	</footer>
	<!-- 사이트 관련 정보 -->

</body>
</html>