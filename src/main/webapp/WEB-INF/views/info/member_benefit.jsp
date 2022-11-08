<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    section {
      width:1000px;
      margin:auto;
      margin-top:70px;
    }
    section .main_text{
      font-size:40px;
      font-weight:bold;
      text-align:center;
    }
    section .sub_text{
      color:grey;
      text-align:center;
    }
    section .buga_text{
      font-size:13px;
      color:grey;
    }
   section input[type=button] {
      width:190px;
      height:40px;
      font-size:20px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
    }
    section table .table_color{
	  background:#EAEAEA;
	  color:black;
	  font-weight:bold;
    }
    section table{
      text-align:left;
      border-spacing:0px;
      border: 1px solid #EAEAEA;
    }
</style>
   <script>
	function qna_btn()
	{
		location="/"
	}
   </script>
</head>
<body>
 <section>
	<div class="main_text">회원혜택 안내</div>
	<p>
	<div class="sub_text">이젠렌터카에 가입하시고 고객중심의 회원혜택을 누리세요.</div>
	<p>
	<div><img src="../resources/info_img/회원혜택.png" width="1000" height="130"></div>
	<p>
		<h1>회원등급</h1>
		<hr>
		<div><img src="../resources/info_img/회원등급.png" width="1000" height="300"></div>
	<p>
		<h1>회원 등급별 할인률</h1>
		<hr>
		<p class="buga_text">표에 대한 할인은 회원의 24시간 이상 자가운전차량 대여 시에만 적용되며, 내륙을 제외한 제주지역은 제주특별자치도 조례 규정에 따라 별도 요금이 적용됩니다.

		<table width="1000" height="250" border="1">

				<tr width="250">
					<td width="250" class="table_color" align="center">구분</td>
					<td class="table_color" align="center">평일 할인율</td>
					<td class="table_color" align="center">휴일(주말) 할인율</td>
				</tr>
				<tr>
					<td class="table_color" align="center">일반 회원</td>
					<td align="center">35%</td>
					<td align="center">30%</td>
				</tr>
				<tr>
					<td class="table_color" align="center">골드 회원</td>
					<td align="center">40%</td>
					<td align="center">35%</td>
				</tr>
				<tr>
					<td class="table_color" align="center">골드 회원</td>
					<td align="center">45%</td>
					<td align="center">40%</td>
				</tr>
		</table>
		<p>
		<h1>회원 특전</h1>
		<hr>
		<p>
		<table width="1000" height="600" border="0">

				<tr>
					<td><div><img src="../resources/info_img/무료업그레이드.png" width="150" height="150"></div></td>
					<td>무료 업그레이드
					<p class="buga_text">누적 대여횟수에 따라 상위 차종 무료 업그레이드 제공
					<p class="buga_text">(소형 등급 예약시 중형 등급, 중형 등급 예약시 준대형 등급으로 업그레이드)
					<p class="buga_text">※ 단, 지점내 차량 보유 상황에 따라 업그레이드가 이월 될 수 있음</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/무료이용권.png" width="150" height="150"></div></td>
					<td>대여 횟수별 무료이용권 제공
					<p class="buga_text">누적 대여횟수에 따라 1일(24시간) 무료이용권 제공
					<p class="buga_text">※ 단, CDW 가입 필수 및 소형, 중형 차량에 한하며 반납후 영업일 기준 3일부터 최대 31일 이내에 발행되고
					<p class="buga_text">발급후 6개월간 사용이 가능하며 마케팅활용 미동의로 인한 쿠폰 미수령, 사용기한 초과로 인한 재발급 및 사용기한 연장은 불가함</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/예약 할인.png" width="150" height="150"></div></td>
					<td>보험 및 온라인 예약 할인
					<p class="buga_text">CDW 가입 시 20% 할인 적용
					<p class="buga_text">웹서비스 예약 시 추가 5% 할인 적용
					<p class="buga_text">(중복할인 불가)</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/생일할인.png" width="150" height="150"></div></td>
					<td>생일 할인
					<p class="buga_text">1회 생월 할인 혜택 제공
					<p class="buga_text">(단, 7월 및 8월 사용불가)</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/승급축하.png" width="150" height="150"></div></td>
					<td>승급 축하선물 증정
					<p class="buga_text">모바일 상품권 제공
					<p class="buga_text">(신규 승급 및 마케팅활용 수신 동의 회원에 한함)</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/더블골드.png" width="150" height="150"></div></td>
					<td>더블골드 회원 전용
					<p class="buga_text">평일 3일(72시간) 이상 사용시, 지점과 동일지역 내(5Km 이내) 배반차 무료 대행</td>
				</tr>
		</table>
		<p>
		<div class="btn1" align="center"> <input type="button" value="자주하는 질문 보기" onclick="qna_btn()"> </div>
		
</section>
</body>
</html>