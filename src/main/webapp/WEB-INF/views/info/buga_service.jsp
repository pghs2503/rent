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
      font-size:14px;
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
</style>
   <script>
	function reserve_btn()
	{
		location="/"
	}
   </script>
</head>
<body>
 <section>
	<div class="main_text">부가서비스 안내</div>
	<p>
	<div class="sub_text">이젠렌터카에서 제공되는 부가서비스로 더 풍성한 렌터카 서비스를 이용하세요!</div>
	<p>
	<div><img src="../resources/info_img/부가서비스.png" width="1000" height="130"></div>
	<p>
		<h1>이용 중 관리 서비스</h1>
		<hr>
		<p class="buga_text">단기렌터카를 이용하던 도중 동승자를 운전자로 추가해야 하거나 급한 일이 생겨 반납시간을 미루거나 반납지점을 변경해야 할 때 직접 지점을 방문하거나 전화를 통해
		직원에게 조치를 받아야 하는 번거로움이 있었습니다. 이젠렌터카의 이용 중 관리 서비스는 이런 불편을 해소하기 위해 만들어졌으며, 언제 어디서든 이젠렌터카
		홈페이지/APP에서 운전자 추가 등록이나 반납일시 및 지점을 바로 변경할 수 있습니다.
		<p class="buga_text">
		더 편한 렌터카 생활을 위한 이젠렌터카만의 특별한 서비스를 많이 이용해주세요.
		※ 단, 추가 금액이 발생하는 경우 결제를 하셔야만 이용이 가능하십니다.

		<h2>변경 가능 정보</h2>
		<hr>
		<p>
		<div><img src="../resources/info_img/시간변경.png" width="1000" height="300"></div>
		<p>
		<h2>이용 중 관리 서비스의 차이점</h2>
		<hr>
		<p>
		<table width="1000" height="250" border="0">

				<tr width="500">
					<td width="500"><div><img src="../resources/info_img/기존방식.png" width="490" height="150"></div></td>
					<td width="500"><div><img src="../resources/info_img/이용중관리방식.png" width="490" height="150"></div></td>
				</tr>
				<tr>
					<td align="center"><p class="buga_text">갑작스러운 상황이라도 언제 어디서든 바로 바로 이젠렌터카 홈페이지에서 간편하게 변경</td>
					<td align="center"><p class="buga_text">운영시간에 맞춰 고객센터나 지점으로 전화하거나가까운 지점에 직접 방문하여 직원에게 요청</td>
				</tr>
		</table>
		<p>

		<h1>대여 서비스</h1>
		<hr>
		<p>
		<table width="1000" height="600" border="0">

				<tr>
					<td><div><img src="../resources/info_img/무료네비.png" width="150" height="150"></div></td>
					<td>(무료) 내비게이션 대여 서비스
					<p class="buga_text">고객님의 편안한 여행을 위해 내비게이션을 무료로 장착하여 대여해드립니다.
					<p class="buga_text">(내비게이션이 기본 장착된 차량이 아닌 경우 거치형 내비게이션을 장착하여 제공)</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/무료카시트.png" width="150" height="150"></div></td>
					<td>(유료) 카시트 대여 서비스
					<p class="buga_text">대여기간에 상관없이 예약 1회에 1개만 신청이 가능합니다.
					<p class="buga_text">대여하는 차량의 종류에 따라 카시트 설치가 어려울 수 있습니다.
					<p class="buga_text">예약하는 일정 및 지점에 이용 가능한 카시트가 없는 경우 대여가 불가합니다.</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/무료편도.png" width="150" height="150"></div></td>
					<td>(유료) 편도 대여 서비스
					<p class="buga_text">편도 대여 서비스는 대여지점과 반남지점을 다르게 이용할 수 있는 서비스입니다.
					<p class="buga_text">24시간 이상 대여 시 이용이 가능하며, 대여지점과 반납지점의 거리에 따라 별도 비용이 부과됩니다.</td>
				</tr>
		</table>
		<p>
		<h1>딜리버리 서비스</h1>
		<hr>
		<p>
		<table width="1000" height="200" border="0">

				<tr>
					<td>이용 조건</td>
					<td>이용 금액</td>
					<td>서비스 가능 시간</td>
				</tr>
				<tr>
					<td>
					<p class="buga_text">롯데렌터카 회원(비회원은 회원가입 후 가능)
					<p class="buga_text">선결제 완료 고객
					<p class="buga_text">자차손해면책제도 고객부담금 면제 가입 고객
					<p class="buga_text">카드 등록 고객
					<p class="buga_text">사전체크인 완료 고객
					</td>
		
				
					<td>
					<p class="buga_text">서비스 지역별 요금 상이 / 대여, 반납 별도
					</td>

					<td>
					<p class="buga_text">서비스 지역별 상이
					<p class="buga_text">자세한 내용은 각 수행지점으로 문의
					</td>
				</tr>
		</table>
		<p>
		<h3>유의 사항</h3>
		<p class="buga_text">딜리버리 서비스는 예약자와 임차인이 동일하여야 하며, 상이할 경우 대여가 제한될 수 있습니다.
		<p class="buga_text">서비스 이용 시 일부 지점의 경우 배송시간이 제한될 수 있습니다.
		<p class="buga_text">해당 서비스는 이용 조건을 만족해야 이용하실 수 있으며 조건을 만족하지 않는 경우 대여가 제한될 수 있습니다.
		<p class="buga_text">서비스 지역별로 가능 지역이 설정되어 있으며 서비스 지역이 아닌 주소로 요청 시 대여가 제한될 수 있습니다.
		<p class="buga_text">차량/기사 준비 및 이동시간을 고려하여 사전 예약이 필수이며 변경요청 시간에 따라 서비스가 제한될 수 있습니다.
		<p class="buga_text">교통사정에 따라 고객님이 지정해주신 시점에서 5~10분 이내에 도착 가능합니다.
		<p class="buga_text">차량 인수는 임차인 본인에 한하여 인수가 가능합니다. (추가운전자, 제3자 인수 불가)
		<p class="buga_text">고객 변심으로 인한 딜리버리 서비스 취소 시 취소 수수료가 발생합니다.
		<p class="buga_text">예약 시간 및 주소 변경은 지점으로 문의하시기 바랍니다.
		<p class="buga_text">조기반납/반납지연/기간연장 시 지점으로 사전연락 하셔야 합니다.
		<p class="buga_text">(사전 연락하지 않는 경우 서비스 이용에 제한이 있을 수 있습니다.)
	
		<div class="btn1" align="center"> <input type="button" value="딜리버리 예약하기" onclick="reserve_btn()"> </div>
		
</section>
</body>
</html>