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
	<div class="main_text">월간단기렌터카 안내</div>
	<p>
	<div class="sub_text">일정기간 차량이 필요 할 때!</div>
	<p>
	<div><img src="../resources/info_img/월간렌트.png" width="1000" height="130"></div>
	<p>
		<h1>서비스 장점</h1>
		<hr>
	<p>

		<table width="1000" height="200" border="0">

				<tr>
					<td><div><img src="../resources/info_img/네트워크관리.png" width="150" height="150"></div></td>
					<td>국내 최고 Network 망
					<p class="buga_text">전국 146여개 지점, 10만여대 차량 보유로
					<p class="buga_text">폭 넓은 선택이 가능
					</td>

					<td><div><img src="../resources/info_img/차량관리.png" width="150" height="150"></div></td>
					<td>토탈 차량 관리 서비스
					<p class="buga_text">일반 정비, 순회 정비 등을 통해 토탈 차량 관리 서비스를 제공
					</td>
				</tr>
				<tr>
					<td><div><img src="../resources/info_img/고품격서비스.png" width="150" height="150"></div></td>
					<td>고품격 차별화 서비스
					<p class="buga_text">No1. 렌터카인 롯데렌터카만의 다양하고 품격 높은 서비스 제공
					</td>
				
					<td></td>
					<td></td>
				</tr>
		</table>
		<p>
		
		<h1>대여절차1</h1>
		<p>
			<div><img src="../resources/info_img/월간렌트.png" width="1000" height="130"></div>
		<p>
		<div class="btn1" align="center"> <input type="button" value="예약신청 하기" onclick="reserve_btn()"> </div>
		
</section>
</body>
</html>