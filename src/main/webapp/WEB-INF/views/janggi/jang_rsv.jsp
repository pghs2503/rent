<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
section {
	width: 1500px;
	margin: auto;
}

#frist {
	width: 1470px;
	margin: auto;
	color: red;
	margin-top: 100px;
	margin-left: 150px;
	font-size: 15px;
}

#second {
	width: 1470px;
	margin: auto;
	color: black;
	margin-left: 150px;
	font-size: 32px;
}

#third {
	width: 1500px;
	height: 500px;
	margin: auto;
	margin-top: 10px;
	background: #EFF2F7;
	padding: 35px;
	position: relative;
}

#car {
	float: left;
	margin-left: 300px;
	position: absolute;
}

#info {
	background: white;
	font-size: 15px;
	margin-left: 800px;
	margin-top: 100px;
	margin-right: 200px;
	padding: 100px;
	padding-bottom: 100px;
	/* padding-left: 25px; */
	padding-right: 100px;
	padding-top: 20px;
	float: right;
	position: absolute;
	border-radius: 20px;
	text-align: center;
}

#inner {
	width: 1000px;
	display: flex;
}

.menu [type=button] {
	background: white;
	font-size: 25px;
	border: none;
	margin-left: 100px;
	margin-top: 100px;
}

.stpe1 {
	border: 3px solid #CCCCCC;
	border-radius: 5px;
}

.step1>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 35px;
}

.step {
	font-size: 20px;
	color: #CCCCCC;
}

.step1 .engine {
	margin: auto;
}

.step1 .engine>#img {
	/* 	display: inline-block; */
	margin: auto;
	margin-right: 130px;
	/* position: relative; */
}

.step2 {
	width: 1000px;
}

.step2>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step2>.model {
	margin-left: 100px;
	font-size: 30px;
	list-style-type: none;
}

.step3>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step3 .color-list {
	font-size: 30px;
	margin-left: 100px;
	margin-top: 50px;
}

.step4 {
	width: 800px;
}

.step4>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step4 .select-option {
	margin-left: 100px;
	font-size: 25px;
	margin-bottom: 20px;
	width: 1100px;
}

.step4 .option {
	border: 1px solid black;
	border-radius: 5px;
	margin-bottom: 20px;
}

.step5 {
	width: 900px;
}

.step5>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step5 .select-list {
	margin-left: 100px;
	border: 1px solid black;
	border-radius: 5px;
}

.step5 .shopinfo {
	margin-left: 100px;
	color: #CCCCCC;
	font-size: 15px;
}

.step5 .list {
	margin-left: 100px;
	border: 1px solid black;
	border-radius: 5px;
	margin-bottom: 20px;
	font-size: 25px;
}

.step6>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step6 .gigan {
	margin-left: 100px;
}

.step6 .select-gigan {
	display: flex;
	width: 800px;
	height: 90px;
	font-size: 25px;
	padding-top: 0px;
	margin: 0px;
	border: 1px solid #cccccc;
	align-items: center;
	justify-content: space-between;
	box-sizing: border-box;
	text-align: center;
}

.step7>h3 {
	margin-left: 100px;
	margin-top: 100px;
	font-size: 40px;
}

.step7 .select-gigan {
	display: flex;
	width: 1000px;
	height: 90px;
	font-size: 15px;
	padding-top: 0px;
	margin-left: 100px;
	margin: 0px;
	border: 1px solid #cccccc;
	align-items: center;
	justify-content: space-between;
	box-sizing: border-box;
	text-align: center;
}

section table {
	margin-left: 100px;
}

.btn[type=button]{
	margin-top: 40px;
	display: inline-flex;
	width: 50%;
	justify-content: center;
	align-items: center;
	background-color: white;
}
section input[type=text] {
      width:380px;
      height:40px;
      font-size:20px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
}
section input[type=submit] {
      width:220px;
      height:50px;
      font-size:30px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
}
</style>
</head>
<body>
	<section>
	<form method="post" action="jang_confirm" name="pkc">
	<input type = "hidden" name="pcode" value="${pvo.pcode}">
	<input type = "hidden" name="logo" value="${logo}">
	<div id="frist" style="font-size: 20px;'">견적</div>
	<div id="second">
		<h2>모델/옵션 선택</h2>
	</div>
	<div id="third">
		<div id="car">
			<img src="../resources/car_img/${pvo.pimg}" width="500" height="450">
		</div>
		<div id="info">
			<div>
			 <c:if test="${logo != 2}">
        		 <img src="../resources/car_img/현대로고.png" width="40" height="40">
         	</c:if>
         	<c:if test="${logo == 2}">
				<img src="../resources/car_img/기아로고.png" width="40" height="40">
			</c:if>
			</div>
			<br>
			<h1>차량이름</h1>
			<h2><div>${pvo.title}</div></h2>
			<h1>연비</h1>
			<h2><div>${pvo.yeonbi}km</div></h2>
	
		</div>
	</div>
	<!-- <div id="inner">
		<div class="menu" style="top: 0px;">
			<button type="button">연료</button>
			<button type="button">모델</button>
			<button type="button">색상</button>
			<button type="button">차량 옵션</button>
			<button type="button">계약 조건</button>
		</div>
	</div> -->
	<div class="step1">
		<h3>
			<span class="step">step1</span><br> <strong>연료선택</strong>
		</h3>
		<div class="engine">
			<ul>
				<div id="img" style="margin-left: 50px;">
					<img src="../resources/img/가솔린.png" width="150" height="130">
				</div>
			</ul>
		</div>
	</div>
	<div class="step2">
		<h3>
			<span class="step">step2</span><br> <strong>모델 선택
				<div
					style="font-size: 15px; color: #CCCCCC; float: right; margin-right: 300px;">
					모델별 사양 및 옵션 세부사항이 변경되거나 실제와 다를 수 있습니다.
					<p>정확한 정보는 각 제조사별 홈페이지를 참고해 주세요.
				</div>
			</strong>
		</h3>
		<div class="model">
			전체모델 <b style="color: red; font-size: 15px;">모델수</b>
			<!-- 추후 모델갯수 확인시 변경예정 -->
			<div class="model_list">
				<ul id="model_list" style="list-style-type: none;">
			      	<div> 
			        	 <input type="radio" name="grade" value="4" checked>최고급
			         </div>
			         <p>
			        <div>  
			       		 <input type="radio" name="grade" value="3"">고급
			         </div>
			           <p>
			         <div> 
			          <input type="radio" name="grade" value="2">중급
			     	 </div>
			     	   <p>
			    	<div> 
			          <input type="radio" name="grade" value="1">초급
			     	 </div>
				</ul>
			</div>
		</div>
	</div>
	<div class="step3">
		<h3>
			<span class="step">step3</span><br> <strong>색상선택</strong>
		</h3>
		<div style="margin-left: 100px;">
			<h4 style="font-size: 30px;">외장색상</h4>
		</div>
		<table border="0" width="800" height="100">
			<tr>
				<td><input type="radio" name="outcolor" value="1" checked><img src="../resources/img/gray.png" width="60" height="60"></td>
				<td><input type="radio" name="outcolor" value="2"><img src="../resources/img/white.gif" width="60" height="60"></td>
			</tr>
		</table>
		<div style="margin-left: 100px;">
			<h4 style="font-size: 30px;">내장색상</h4>
		</div>
		<table border="0" width="800" height="100">
			<tr>
				<td><input type="radio" name="incolor" value="1" checked><img src="../resources/img/gray.png" width="60" height="60"></td>
				<td><input type="radio" name="incolor" value="2"><img src="../resources/img/white.gif" width="60" height="60"></td>
			</tr>
		</table>
<!-- 		<div class="color-list">
			<div class="list-title">
				<h4>외장색상</h4>
			</div>
			<ul id="color-select">
				<li id="color-list" style="list-style-type: none;"><label>
						<img src="../resources/img/white.gif" width="60" height="60">
				</label></li>
			</ul>
			<div>
				<h4>내장색상</h4>
			</div>
			<ul id="color-select">
				<li id="color-list" style="list-style-type: none;"><label>
						<img src="../resources/img/gray.png" width="60" height="60">
				</label></li>
			</ul>
		</div> -->
	</div>
	<div class="step4">
		<h3>
			<span class="step">step4</span><br> <strong>차량옵션선택</strong>
		</h3>
		<div class="select-option">
			<input type = "text" value="기본가 : " readonly>  <input type = "text" name = "jangprice" value="${pvo.jangprice}" readonly>
			<p>
			<input type = "text" value="변속기 : " readonly> 
			<c:if test="${pvo.auto != 1}">
        		 <input type = "text" name = "auto" value="수동" readonly>
         	</c:if>
         	<c:if test="${pvo.auto == 1}">
        		 <input type = "text" name = "auto" value="자동" readonly>
         	</c:if>
			<p>
			<input type = "text" value="기본 옵션 : " readonly> <input type = "text" name = "conbi" value="" > ex) 열선, 통풍
			<p>
			<input type = "text" value="네비 : " readonly> <input type = "text" name = "nav" value="${pvo.nav}" readonly>
			<p>
			<input type = "text" value="타이어 : " readonly> <input type = "text" name = "wheel" value="타이어 : 17인치 알로이휠 & 타이어" readonly>
				
		</div>
	</div>
	<div class="step5">
		<h3>
			<span class="step">step5</span><br> <strong>구매 사은품</strong>
		</h3>
		<div class="shop-list">
			<div class="shopinfo">제네시스 커넥티드 서비스(GCS), 현대기아 블루링크/UVO 지원 전
				차종은 IoT 단말기 장착 없이 IoT서비스 혜택을 받으실 수 있습니다.</div>
		</div>

		<div class="list">IoT 단말기(장착)</div>
		<div class="list">IoT 서비스 단말기</div>
		<div class="list">[블랙박스] 뷰게라 2채널 [썬팅] 3M(전면35%, 측후면15%)</div>
	</div>
	<div class="step6">
		<h3>
			<span class="step">step6</span><br> <strong>계약조건</strong>
		</h3>
		<div id="guide"
			style="font-size: 15px; color: #CCCCCC; margin-bottom: 30px; margin-left: 500px; margin-top: 20px;">
			TIP. 현재 인기 계약 조건은 48개월, 선납금 30%, 2만km에요!</div>
		<div class="gigan" style="margin-left: 100px;">
			<h4>계약기간</h4>
			<ul id="model_list" style="list-style-type: none;">
				 <div style="font-size: 30px;">  
			   		 <input type="radio" name="gigan" value="24" checked>24개월
			     </div>
		          <p>
		         <div style="font-size: 30px;"> 
		             <input type="radio" name="gigan" value="36">36개월
			   	 </div>
			   	   <p>
			    	<div style="font-size: 30px;"> 
			          <input type="radio" name="gigan" value="60">60개월
			   	 </div>
			 </ul>
			<div class="bozang" style="margin-top: 50px;">
				
			<h4>주행거리</h4>
				</div>
				<ul class="select-gigan" style="list-style-type: none;">
					<li class="gigan-list"><label> 연간 3만km </label></li>
				</ul>
			</div>
		</div>
	</div>
<br>
	<div align="center">
		<input type="submit" value="견적 결과 확인">
	</div>
	</form>
	<br>
	</section>
</body>
</html>