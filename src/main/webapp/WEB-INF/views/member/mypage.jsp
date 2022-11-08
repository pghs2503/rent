<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
section{
	margin: 0px;
	margin: auto;
	width: 1100px;
	height: 1100px;
	margin-top: 30px;
	margin-bottom: 50px;	
}
section #top{
	text-align: center;
	margin-top: 90px;
	margin: auto;
}

section #mid{
	margin: auto;
	width: 1100px;
	height: 900px;
	margin-top: 50px;
}
section #mid #left{
	float: left;
	width: 250px;
	height: 900px;
	background: #FAFAFA;
}
section #mid #left ul li{
	width: 200px;
	height: 40px;
}
section #mid #left .fontbold{
	font-size: 12px;	
	font-weight: bold;	
}
section #mid #left .fontbasic{
	font-size: 12px;
}
section #mid #left #danre:hover{
	cursor: pointer;
}
section #mid #left #jangre:hover{
	cursor: pointer;
}
section #mid #left #license:hover{
	cursor: pointer;
}
section #mid #left #myinfochange:hover{
	cursor: pointer;
}
section #mid #left #pwdchange:hover{
	cursor: pointer;
}

section #mid #left #memberout:hover{
	cursor: pointer;
}
section #mid #right{
	float: left;
	width: 800px;
	height: 900px;
}

section #mid #right #lie{
	border: 1px solid red;
	border-radius: 30px;
	background: #FAFAFA;
	width: 700px;
	height: 300px;
	padding-top: 15px;
	padding-left: 30px;s
}

section #mid #right #lie_mid{
	width: 700px;
	height: 200px;
	
}
section #mid #right #lie #lie_mid_right{
	float: left;
	width: 400px;
}
section #mid #right #lie #lie_mid_left{
	float: left;
	width: 210px;
}
section #mid #right #calli{
	display: none;
}

section #mid #right #lie1{
	border: 1px solid red;
	border-radius: 30px;
	background: #FAFAFA;
	width: 700px;
	height: 300px;
	padding-top: 15px;
	padding-left: 30px;
}
section #mid #right #lie1 input[type=text]{
	outline: none;
}

section #mid #right #lie_mid1{
	width: 700px;
	height: 200px;
	
}
section #mid #right #lie1 #lie_mid_right1{
	float: left;
	width: 400px;
}
section #mid #right #lie1 #lie_mid_left1{
	float: left;
	width: 210px;
}

section #mid #right #danmain{
	margin: auto;
	width: 600px;
	height: 300px;	
	display: block;
}
section #mid #right #danleft{
	float: left;
	width: 300px;
	height: 300px;
}
section #mid #right #danright{
	float: left;
	width: 300px;
	height: 300px;
}
section #mid #right #jangreserve{
	display: none;
}

section #mid #right #jangmain{
	margin: auto;
	width: 600px;
	height: 300px;	
	
}
section #mid #right #jangleft{
	float: left;
	width: 300px;
	height: 300px;
}
section #mid #right #jangright{
	float: left;
	width: 300px;
	height: 300px;
}
section #mid #right #myinfo{
	display: none;
}

section #mid #right #myinfo input[type=text]{
	width: 240px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #myinfo input[type=submit]{
	width: 248px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #pass_change{
	display: none;
}

section #mid #right #pass_change input[type=password]{
	width: 240px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #pass_change input[type=submit]{
	width: 248px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #member_out{
	display: none;
}

section #mid #right #member_out input[type=text]{
	width: 240px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #member_out input[type=password]{
	width: 240px;
	height: 40px;
	margin-top: 5px;
}
section #mid #right #member_out input[type=submit]{
	width: 248px;
	height: 40px;
	margin-top: 5px;
}
</style>
<script>

$(function(){
	
	$("form[name=lie]").submit(function(){
		
		if( !($(".chk").eq(0).is(":checked")) ){
			alert("고유식별정보 수집을 동의해주세요");
			return false;
		}
		else if(( $(".chk").eq(0).is(":checked") )){
			if(!($(".chk").eq(1).is(":checked")))
				$("input[name=pay]").attr("value",0);
			else
				$("input[name=pay]").attr("value",1);
			return true;
		}
		
	});
	
	$("#danre").click(function(){		
		$("#danreserve").css("display","block");
		$("#jangreserve").css("display","none");
		$("#calli").css("display","none");
		$("#myinfo").css("display","none");
		$("#pass_change").css("display","none");
		$("#member_out").css("display","none");
	});
	
	$("#jangre").click(function(){		
		$("#danreserve").css("display","none");
		$("#jangreserve").css("display","block");
		$("#calli").css("display","none");
		$("#myinfo").css("display","none");
		$("#pass_change").css("display","none");
		$("#member_out").css("display","none");
	});
	
	$("#license").click(function(){		
		$("#danreserve").css("display","none");
		$("#jangreserve").css("display","none");
		$("#calli").css("display","block");
		$("#myinfo").css("display","none");
		$("#pass_change").css("display","none");
		$("#member_out").css("display","none");
	});
	
	$("#myinfochange").click(function(){	
		$("#danreserve").css("display","none");
		$("#jangreserve").css("display","none");
		$("#calli").css("display","none");
		$("#myinfo").css("display","block");
		$("#pass_change").css("display","none");
		$("#member_out").css("display","none");
	});
	
	$("#pwdchange").click(function(){
		$("#danreserve").css("display","none");
		$("#jangreserve").css("display","none");
		$("#calli").css("display","none");
		$("#myinfo").css("display","none");
		$("#pass_change").css("display","block");
		$("#member_out").css("display","none");
	});
	
	$("#memberout").click(function(){	
		$("#danreserve").css("display","none");
		$("#jangreserve").css("display","none");
		$("#calli").css("display","none");
		$("#myinfo").css("display","none");
		$("#pass_change").css("display","none");
		$("#member_out").css("display","block");
		$('body, html').animate({scrollTop:0}, speed);
		
	});
});
</script>
</head>
<body>


	<section>
		
		<div id="top"><b style="font-size:42px">마이페이지</b><br><span style="font-size:13px;color:#c0c0c0;">이젠렌터카 회원을 위한 다양한 혜택이 준비되어 있습니다.</span></div>
	
	
		<div id="mid">
		
			<div id="left"> 
			<ul>
				<li class="fontblod" id="danre">단기렌터카 예약</li>
				<li class="fontblod">월간단기렌터카 예약</li>
				<li class="fontblod">기사포함단기렌터카 예약</li>
				<li class="fontblod" id="jangre">장기렌터카 계약</li>
				
				<li class="fontblod">회원</li>
				<li class="fontbasic" id="myinfochange">회원정보 변경</li>
				<li class="fontbasic" id="pwdchange">비밀번호 변경</li>
				<li class="fontbasic" id="memberout">회원탈퇴</li>
				
				<li class="fontblod">렌터카 상담</li>				
				<li class="fontbasic">일반상담</li>
				<li class="fontbasic">승계 매물 심사 내역</li>
				
				<li class="fontblod">내차 팔기 상담</li>
				
				<li class="fontblod">포인트</li>
				<li class="fontbasic">사용내역</li>
				<li class="fontbasic">포인트 전환 신청</li>
				
				<li class="fontblod">할인쿠폰 및 무료이용권</li>
				<li class="fontbasic">할인쿠폰</li>
				<li class="fontbasic">무료이용권</li>
				
				<li class="fontblod">신차장 친구추천 활동</li>
				<li class="fontblod">결제카드</li>
				
				<li class="fontblod">운전면허증</li>
				<li class="fontbasic" id="license">국내</li>
				<li class="fontbasic">국제</li>
				
				<li class="fontblod">나의 부가 정보</li>
				<li class="fontblod">나의 관심 차종</li>
				<li class="fontblod">나의 찜 차량</li>
				<li class="fontblod">나의 관심 지점</li>
				<li class="fontblod">고객센터</li>
				
				
				
				<li class="fontblod">롯데그룹사 임직원 인증</li>
			</ul>
			
			</div>
			
			<div id="right"> 
			
				<div id="danreserve">
					<div style="text-align:center;margin-top:50px;margin-left:30px"><h2>단기 렌트 예약 현황</h2></div>
					<hr>
					<c:if test="${!(empty rlist)}">
					<c:forEach items="${rlist}" var="rvo">
					<div id="danmian">
					<div id="danleft"><img src="../resources/car_img/${rvo.pimg}" width="250px;"></div>
					<div id="danright">차종 : ${rvo.title} <br>
					가격 : ${rvo.total} <br>
					예약날짜 : ${rvo.inday} <br>
					반납날짜 : ${rvo.outday} <br>				
					</div>
					</div>	
					</c:forEach>
					</c:if>
					<c:if test="${empty rlist}">
						<div>아직 예약된 차가 없습니다</div>
					</c:if>
					
				</div>
				
				<div id="jangreserve">
					<div style="text-align:center;margin-top:50px;margin-left:30px"><h2>장기 렌트 예약 현황</h2></div>
					<hr>
					<c:if test="${!(empty jlist)}">
					<c:forEach items="${jlist}" var="jvo">
					<div id="jangmain">
					<div id="jangleft"><img src="../resources/img/${jvo.pimg}"></div>
					<div id="jangright">차종 : ${jvo.title} <br>
					가격 : ${jvo.total} <br>
					예약날짜 : ${jvo.inday} <br>
					반납날짜 : ${jvo.outday} <br>				
					</div>
					</div>	
					</c:forEach>
					</c:if>
					<c:if test="${empty jlist}">
						<div>아직 예약된 차가 없습니다</div>
					</c:if>
				
				</div>
				
				<div id="calli">
				<div><h2>운전면허정보</h2></div>
					<hr>
				
				
				<c:if test="${empty lvo2}">
				<form method="post" name="lie" action="license_ok">
				<input type="hidden" name="gou" value="1">
				<input type="hidden" name="pay">
				
				<div id='lie'>
				
					
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="jong">
					<option>선택</option>
					<option value="1">1종대형</option>
					<option value="2">1종보통</option>
					<option value="3">2종보통</option>
					<option value="4">2종오토</option>
					</select>①&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자동차운전면허증</div>
					
					<div id="lie_mid"> 
					<div id="lie_mid_left"><img src="../resources/img/운전면허증이미지.png"></div>
					<div id="lie_mid_right"><select name="li1">
					<c:forEach var="i" begin="11" end="28">
					<option value="${i}">${i}</option>
					</c:forEach>
					</select><input type="text" name="li2" style="width:50px;margin:0px;margin-left:5px;"><input type="text" name="li3" style="width:100px;margin:0px;margin-left:5px;"><input type="text" name="li4" style="width:50px;margin:0px;margin-left:5px;">②<br>
					<span>이름</span>&nbsp;&nbsp;&nbsp;<input type="text" name="name">③<br>
					<span>생년월일</span>&nbsp;&nbsp;&nbsp;<input type="text" name="birthday" value="${birth}" style="width:100px;" readonly/>-<input type="text" name="su" value="${su}" style="width:20px;" readonly/>******④<br>
					<span style="font-size:8px;color:#c0c0c0">서울시 강남구 테헤란로 422 KT타워</span><br>
					<span>적성검사</span><span>YYMMDD</span><br>
					<span>기간: ~</span><input type="text" name="gigan1">⑤<br><input type="text" name="gigan2">⑥</div>
					</div>
					</div><hr>
					<span>면허정보 입력항목 안내</span><br>
					<span>①면허종류 : 10인승 이상 차량은 1종 보통 이상 면허가 있어야 운전이 가능합니다.</span><br>
					<span>②면허번호 : 2014년 07월 02일 이후 발급 면허는 지역정보를 숫자코드로 입력합니다.</span><br>
					<span>③이름 : 면허증에 기재된 이름을 입력합니다.</span><br>
					<span>④생년월일 : 주민등록번호의 앞 7자리를 입력합니다.</span><br>
					<span>⑤만료일자 : 유효하지 않은 면허증은 대여가 불가하므로, 기간 내 갱신해주세요.</span><br>
					<span>⑥발급일자 : 신규발급 또는 갱신, 재발급힌 면허증에 기입된 발급일자를 입력합니다.</span><br>
					<hr>
					<span><input type="checkbox" class="chk">고유식별정보 수집에 대한 동의(필수)</span><br>
					<span><input type="checkbox" class="chk">과태료 수신동의(선택)</span><br>
					<span><input type="submit" value="운전면허증등록"></span>
				</form>
				</c:if>	
				
				
			
				
				<c:if test="${!(empty lvo2)}">
				<div id="lie1">
				<c:if test="${lvo2.jong == 1}"><c:set var="jong" value="1종대형"/></c:if><c:if test="${lvo2.jong == 2}"><c:set var="jong" value="1종보통"/></c:if><c:if test="${lvo2.jong == 3}"><c:set var="jong" value="2종보통"/></c:if><c:if test="${lvo2.jong == 4}"><c:set var="jong" value="2종오토"/></c:if>
				<div>${jong} // 운전면허증</div>
					<div id="lie_mid1"> 
					<div id="lie_mid_left1"><img src="../resources/img/운전면허증이미지.png"></div>
					<div id="lie_mid_right1">
					<input type="text" value="${lvo2.li1}" style="width:30px;margin:0px;margin-left:5px;" readonly/>-<input type="text" value="${lvo2.li2}" style="width:30px;margin:0px;margin-left:5px;" readonly/>-<input type="text" value="${lvo2.li3}" style="width:50px;margin:0px;margin-left:5px;" readonly/>-<input type="text" value="${lvo2.li4}" style="width:30px;margin:0px;margin-left:5px;" readonly/><br>
					<span>이름</span> <input type="text" value="${lvo2.name}"><br>
					<span>생년월일</span><input type="text" value="${lvo2.birthday}" readonly/>-<input type="text" value="${lvo2.su}" style="width:30px;margin:0px;margin-left:5px;" readonly/>******<br>
					<span style="font-size:8px;color:#c0c0c0">서울시 강남구 테헤란로 422 KT타워</span><br>
					<span>적성검사</span><span>YYMMDD</span><br>
					<span>기간: ~</span><input type="text" value="${lvo2.gigan1}" readonly/><br><input type="text" value="${lvo2.gigan2}" readonly/>
					</div>
					</div>
				
				</div>
				</c:if>
				</div>
				<div id="myinfo">
					<div style="text-align:center;margin-top:50px;margin-left:30px;margin-bottom:50px;"><h2>회원정보 변경</h2></div>
					<hr>
					<div style="text-align:center;margin-top:50px;margin-left:30px">
					<form method="post" action="myinfochange">
					<div><input type="text" name="email" placeholder="이메일입력"></div>
					<div><input type="text" name="phone" placeholder="전화번호입력"></div>
					<div><input type="submit" value="회원정보 변경"></div>
					</form>
					</div>
				</div>
				
				<div id="pass_change">
					<div style="text-align:center;margin-top:50px;margin-left:30px;margin-bottom:50px;"> <h2> 비밀번호 변경 </h2></div>
					<hr>
					<div style="text-align:center;margin-top:50px;margin-left:30px">
					<form method="post" action="passchange">
						<div><input type="password" name="oldpwd" placeholder="기존비밀번호입력"></div>
						<div><input type="password" name="pwd" placeholder="새 비밀번호 입력"></div>
						<div><input type="password" name="pwd2" placeholder="새 비밀번호 입력 확인"></div>
						<div><input type="submit" value="비밀번호 변경"></div>
					</form>	
					</div>			
				</div>
				
				<div id="member_out">
					<div style="text-align:center;margin-top:50px;margin-left:30px;margin-bottom:50px;"><h2>회원탈퇴</h2></div>
					<hr>
					<div style="text-align:center;margin-top:50px;margin-left:30px">
					<form method="post" action="memberout">
						<div><input type="text" name="userid" placeholder="아이디입력"></div>
						<div><input type="text" name="pwd" placeholder="비밀번호 입력"></div>
						<div><input type="submit" value="회원탈퇴"></div>
					</form>
					</div>
				</div>
			
			</div>
		
		</div>
	
	</section>

</body>
</html>