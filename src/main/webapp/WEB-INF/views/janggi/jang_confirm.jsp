<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<form method="post" action="jang_ok" name="pkc">
	<input type = "hidden" name="pcode" value="${pvo.pimg}">
		<div id="third">
		<div id="car">
			<img src="../resources/car_img/${pvo.pimg}" width="500" height="450">
		</div>
		<div id="info">
			<div>
			 <c:if test="${logo != 2}">
        		 <img src="../resources/car_img/????????????.png" width="60" height="50">
         	</c:if>
         	<c:if test="${logo == 2}">
				<img src="../resources/car_img/????????????.png" width="60" height="50">
			</c:if>
			</div>
			<br>
			<h1>????????????</h1>
			<h2><div>${pvo.title}</div></h2>
			<h1>??????</h1>
			<h2><div>${pvo.yeonbi}km</div></h2>
			<h1>??????</h1>
			<c:if test="${grade == 4}">
        		 <h2><div>?????????</div></h2>
         	</c:if>
         	<c:if test="${grade == 3}">
        		 <h2><div>??????</div></h2>
         	</c:if>
         	<c:if test="${grade == 2}">
        		 <h2><div>??????</div></h2>
         	</c:if>
         	<c:if test="${grade == 1}">
        		 <h2><div>??????</div></h2>
         	</c:if>
		</div>
	</div>
	<div class="step7">
		<div style="margin-left: 100px;">
			<h4 style="font-size: 30px;">????????????</h4>
		 	</div>
		<table border="0" width="800" height="200">
			<tr>
				<td width="100">????????????
				<c:if test="${outcolor != 2}">
        		 <img src="../resources/img/gray.png" width="60" height="60">
         		</c:if>
         		<c:if test="${outcolor == 2}">
        		 <img src="../resources/img/white.gif" width="60" height="60">
         		</c:if></td>
				<td width="100">????????????
				<c:if test="${incolor != 2}">
        		 <img src="../resources/img/gray.png" width="60" height="60">
         		</c:if>
         		<c:if test="${incolor == 2}">
        		 <img src="../resources/img/white.gif" width="60" height="60">
         		</c:if></td>
				<td width="100">????????????</td>
				<td width="100">${conbi}</td>
			</tr>
			<tr>
				<td>????????????</td>
				<td>IoT ?????????(??????)</td>
				<td>IoT ????????? ?????????</td>
				<td>[????????????] ????????? 2?????? [??????] 3M(??????35%, ?????????15%)</td>
			</tr>
			<!-- 
			<li>?????? <b> ????????? or ??????</b></li><li>?????? <b> ?????????	</b></li><li>?????? <b> ????????????</b></li>
			<li>???????????? <b> ??????????????????</b></li>	<li>???????????? <b> 	</b></li>
		</ul>
		<h4>????????????</h4>
		<ul class="select-gigan" style="list-style-type: none;">
			<li>?????? <b> ????????? or ??????</b></li><li>?????? <b> ?????????	</b></li><li>?????? <b> ????????????</b></li>
			<li>???????????? <b> ??????????????????</b></li>	<li>???????????? <b> ???????????? ??? ????????????	</b></li>
		</ul> -->
		</table>
		<div style="margin-left: 100px;">
			<h4 style="font-size: 30px;">????????????</h4>
		</div>
		<table border="0" width="800" height="500">
			<tr>
				<td class="total-list">????????????</td>
				<td class="total-gigan">${gigan}??????</td>
			</tr>
			<tr>
				<td class="total-list">??????</td>
				<td class="total-gigan"><fmt:formatNumber value="${pvo.jangprice*gigan}" type="number"/>???</td>
			</tr>
			<tr>
				<td class="total-list">????????????</td>
				<td class="total-gigan">??????1??????</td>
			</tr>
			<tr>
				<td class="total-list">??????</td>
				<td class="total-gigan">1??????</td>
			</tr>
			<tr>
				<td class="total-list">??????????????????</td>
				<td class="total-gigan">2??????/1??????</td>
			</tr>
			<tr>
				<td class="total-list">????????????</td>
				<td class="total-gigan">3???km</td>
			</tr>
		</table>
	</div>

	<div align="center">
		<input type="submit" value="?????? ??????">
	</div>
	</form>
	<br>
	</section>
</body>
</html>