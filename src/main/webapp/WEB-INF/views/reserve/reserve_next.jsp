<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
#section {
	width: 1100px;
	margin: auto;
	height: 500px;
}

#section tr {
	height: 40px;
}
input[type=submit] {
      width:220px;
      height:40px;
      font-size:20px;
      border:1px solid red;
      background:red;
      color:black;
      font-weight:bold;
}
</style>
<script>
	
</script>
<body>

	<div id="section">
		<form name="reser" method="post" action="reserve_ok">
		 <input type="hidden" name="title" value="${pvo.title}">
			<input type="hidden" name="area" value="${pvo.area}"> <input
				type="hidden" name="inday" value="${pvo.inday}"> <input
				type="hidden" name="outday" value="${pvo.outday}"> <input
				type="hidden" name="car_id" value="${pvo.id}"> <input
				type="hidden" name="total" value="${(pvo.danprice)*(pvo.totaldate)}">
				<input type="hidden" name="pimg" value="${pvo.pimg}">
			
								
		   
			<table width="600" align="center">
				<caption>
					<h2>예약 정보</h2>
				</caption>

				<tr height="300">
					<td colspan="4" align="center">
						<!-- 그림, 상품명, 상세설명 -->
						<div id="car_img">
							<img src="../resources/car_img/${pvo.pimg}" width="330"
								height="200">
						</div> <!-- 그림 -->
						<div id="car_name">${pvo.title}</div>
					</td>
				</tr>
				<tr>
					<td>대여일</td>
					<td>${pvo.inday}</td>
					<td>반납일</td>
					<td>${pvo.outday}</td>
				</tr>
				
			   <tr>
			  		<td>지역</td>
					<td colspan="3">${pvo.area}</td>
				</tr>
				<tr>
					<td>렌트 가격</td>
					<td colspan="3"><span id="suk"><fmt:formatNumber value="${pvo.danprice}" type="number"/></span>원</td>
				</tr>
				<tr>
					<td>총 가격</td>
					<td colspan="3"><span id="total"><fmt:formatNumber
								value="${(pvo.danprice)*(pvo.totaldate)}" type="number" /></span>원</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
					<input type="submit" value="예약하기"></td>
				</tr>
			</table>
		</form>
	</div>