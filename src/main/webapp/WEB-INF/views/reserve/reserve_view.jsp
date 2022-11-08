<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
#section {
	width: 1100px;
	height: 500px;
	margin: auto;
}
</style>
<div id="section">

	<table width="900" align="center">
		<caption>
			<h2>예약정보</h2>
		</caption>
		<tr align="center">
			<td>차량</td>
			<td>지역</td>
			<td>대여일</td>
			<td>반납일</td>
			<td>총결제금액</td>
			<td>예약일</td>
			<td>상 태</td>
			<td>&nbsp;</td>
		</tr>
		<tr align="center">
		<td>
			<img src="../resources/car_img/${rvo.pimg}" width="330"
				height="200"></td>
			<td>${rvo.area}</td>
			<td>${rvo.inday}</td>
			<td>${rvo.outday}</td>
			<td><span id="total"><fmt:formatNumber
						value="${rvo.total}" type="number" /></span>원</td>
			<td>${rvo.writeday}</td>
			<c:if test="${rvo.state == 0 }">
				<c:set var="state" value="예약완료" />
			</c:if>
			<c:if test="${rvo.state == 1 }">
				<c:set var="state" value="취소신청" />
			</c:if>
			<c:if test="${rvo.state == 2 }">
				<c:set var="state" value="취소완료" />
			</c:if>
			<c:if test="${rvo.state == 3 }">
				<c:set var="state" value="사용완료" />
			</c:if>
			<td>${state}</td>
			<!-- 버튼 만들 td -->
			<!-- 예약완료일 경우 예약취소버튼 -->
			<c:if test="${rvo.state==0}">
				<td><input type="button" value="취소신청"
					onclick="location='change_state?state=1&id=${rvo.id}'"></td>
			</c:if>
			<!-- 예약취소중일 경우 취소철회버튼 -->
			<c:if test="${rvo.state==1}">
				<td><input type="button" value="취소철회"
					onclick="location='change_state?state=0&id=${rvo.id}'"></td>
			</c:if>
			<!-- rdto.state==2 || rdto.state==3 -->
			<c:if test="${ !(rvo.state==0 || rvo.state==1) }">
				<td>&nbsp;</td>
			</c:if>
		</tr>
	</table>

</div>









