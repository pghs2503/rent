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
    section #first table{
      text-align:center;
      border-spacing:0px;
      color:grey;
      border: 1px solid #EAEAEA;
    }
    section table .table_color{
	  background:#EAEAEA;
	  color:black;
	  font-weight:bold;
    }
    section #second table{
      text-align:center;
      border-spacing:0px;
      color:grey;
      border: 1px solid #EAEAEA;
    }
    section #second table .font_size{
      font-size:23px;
      font-weight:bold;
      text-align:center;
    }
    section #second table .lst_dot{
      font-size:14px;
      color:grey;
    }
    section #second table .btn1{
      align:center;
    }
    section input[type=button] {
      width:120px;
      height:40px;
      font-size:20px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
    }
    section #second .car_text{
      text-align:center;
      font-size:20px;
      font-weight:bold;
    }
    section #second .1day_pay{
      font-weight:bold;
      font-size:15px;
    }
    section #fourth table{
      text-align:center;
      border-spacing:0px;
      color:grey;
      border: 1px solid #EAEAEA;
    }
    section #fourth .bold_text{
      font-weight:bold;
      font-size:15px;
    }
    section #fifth table{
      text-align:center;
      border-spacing:0px;
      color:grey;
      border: 1px solid #EAEAEA;
    }
    section #fifth .bold_text{
      font-weight:bold;
      font-size:15px;
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
	<div class="main_text">대여 및 요금안내</div>
	<div class="sub_text">업계최초 고객만족도와 변함없는 이젠렌터카 서비스를 경험하세요!</div>
	<div id = "first">
		<h1>대여 자격</h1>
		<hr>
		<p class="">도로교통법상 유효한 운전면허증을 소지하여야 대여가 가능하며, 1종 면허의 경우 적성기간 경과 후 1년이 지나면 운전면허 취소로 대여가 불가합니다.
		</p>
		<table width="1000" height="300" border="1">

				<tr width="250">
					<td width="250" class="table_color">차량 유형</td>
					<td class="table_color">9인승 이하</td>
					<td class="table_color">11~12인승</td>
					<td class="table_color">15인승</td>
				</tr>
				<tr>
					<td class="table_color">면허 종류</td>
					<td>2종 보통 이상</td>
					<td>1종 보통 이상</td>
					<td>1종 보통 이상</td>
				</tr>
				<tr>
					<td class="table_color">운전자 연령</td>
					<td>만 21세 이상 (대여일 기준)</td>
					<td>만 21세 이상 (대여일 기준)</td>
					<td>만26세 이상(대여일 기준)</td>
				</tr>
				<tr>
					<td class="table_color">취득 후 기간</td>
					<td>면허 취득일로부터 1년 이상 경과</td>
					<td>면허 취득일로부터 1년 이상 경과</td>
					<td>면허 취득일로부터 1년 이상 경과</td>
				</tr>
		</table>
		
		<ul>
			<li>이젠렌터카는 [여객자동차 운수사업법 시행규칙 제 67조]에 의거 15인승 이하 차량만 대여가 가능합니다.</li>
			<li>운전면허증에 원동기가 함께 기재되어 있는 경우 운전경력증명서를 지참하셔야 차량대여가 가능합니다.</li>
			<li>대여 시 운전면허증을 지참하셔야 하며 모바일 PASS 면허는 불가합니다.</li>
		</ul>
	</div>
		
	<div id = "second">
		<h1>요금 안내</h1>
		<hr>
		<table width="1000" height="300" border="0">
		<tr>
			<td>
				<div class="img_box">
					<img src="../resources/info_img/비용.png" width="500" height="300">
				</div>
			</td>
			<td>
				<div class="descri_box">
					<h4 class="font_size">회원가입 할인 혜택</h4>
					<ul class="lst_dot">
						<li align="left">주중 및 주말 최고 60% 회원 할인 혜택 (단 24시간 이상 이용 시 할인 적용)</li>
						<p>
						<li align="left">차량 무료 업그레이드 / 무료 이용권 지급</li>
						<p>
						<li align="left">다양한 여행정보 및 할인쿠폰 제공을 통해 알뜰한 여행 가능</li>
					</ul>
				</div>
				<div class="btn1" align="center"> <input type="button" value="예약하기" onclick="reserve_btn()"> </div>
			</td>
		</tr>
		</table>
		<h1>차량별 요금</h1>
		<div class="car_text">경차</div>
		<p>
		※ 해당 요금은 21년 11월 1일자 기준 요금 입니다.
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">스파크,모닝</td>
					<td>105,000</td>
					<td>95,000</td>
					<td>89,000</td>
					<td>84,000</td>
				</tr>
				<tr>
					<td class="table_color">레이,엑센트</td>
					<td>110,000</td>
					<td>99,000</td>
					<td>94,000</td>
					<td>88,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">스파크,모닝</td>
					<td>59,000</td>
					<td>76,000</td>
					<td>84,000</td>
				</tr>
				<tr>
					<td class="table_color">레이,엑센트</td>
					<td>62,000</td>
					<td>79,000</td>
					<td>88,000</td>
				</tr>
		</table>
		
		<h1></h1>
		<div class="car_text">소형</div>
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">아반떼,K3,SM3,벨로스터,클리오</td>
					<td>121,000</td>
					<td>109,000</td>
					<td>103,000</td>
					<td>97,000</td>
				</tr>
				<tr>
					<td class="table_color">I30,아반떼(H),아이오닉(H)</td>
					<td>132,000</td>
					<td>119,000</td>
					<td>112,000</td>
					<td>106,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">아반떼,K3,SM3,벨로스터,클리오</td>
					<td>68,000</td>
					<td>87,000</td>
					<td>97,000</td>
				</tr>
				<tr>
					<td class="table_color">I30,아반떼(H),아이오닉(H)</td>
					<td>74,000</td>
					<td>95,000</td>
					<td>106,000</td>
				</tr>
		</table>
		<h1></h1>
		<div class="car_text">중형</div>
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="300" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">쏘나타,K5,SM6,말리부</td>
					<td>187,000</td>
					<td>168,000</td>
					<td>159,000</td>
					<td>150,000</td>
				</tr>
				<tr>
					<td class="table_color">SM6(L)쏘나타,K5(L)&(H)</td>
					<td>193,000</td>
					<td>174,000</td>
					<td>164,000</td>
					<td>154,000</td>
				</tr>
				<tr>
					<td class="table_color">G70 2.0T(G),스팅어 2.0T(G)</td>
					<td>350,000</td>
					<td>315,000</td>
					<td>298,000</td>
					<td>280,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">쏘나타,K5,SM6,말리부</td>
					<td>105,000</td>
					<td>135,000</td>
					<td>150,000</td>
				</tr>
				<tr>
					<td class="table_color">SM6(L)쏘나타,K5(L)&(H)</td>
					<td>108,000</td>
					<td>139,000</td>
					<td>154,000</td>
				</tr>
				<tr>
					<td class="table_color">G70 2.0T(G),스팅어 2.0T(G)</td>
					<td>196,000</td>
					<td>252,000</td>
					<td>280,000</td>
				</tr>
		</table>
		<h1></h1>
		<div class="car_text">준대형</div>
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="350" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">그랜저 2.5(G)/2.2(D),K7 2.5(G)/2.2(D),임팔라 2.5(G)</td>
					<td>300,000</td>
					<td>270,000</td>
					<td>255,000</td>
					<td>240,000</td>
				</tr>
				<tr>
					<td class="table_color">K8 2.5(G)</td>
					<td>314,000</td>
					<td>283,000</td>
					<td>267,000</td>
					<td>251,000</td>
				</tr>
				<tr>
					<td class="table_color">그랜져3.0(L),3.3(G)</td>
					<td>341,000</td>
					<td>307,000</td>
					<td>290,000</td>
					<td>273,000</td>
				</tr>
				<tr>
					<td class="table_color">G70 3.3(G),스팅어 3.3(G)</td>
					<td>415,000</td>
					<td>373,000</td>
					<td>352,000</td>
					<td>332,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="350" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">그랜저 2.5(G)/2.2(D),K7 2.5(G)/2.2(D),임팔라 2.5(G)</td>
					<td>168,000</td>
					<td>216,000</td>
					<td>240,000</td>
				</tr>
				<tr>
					<td class="table_color">K8 2.5(G)</td>
					<td>176,000</td>
					<td>226,000</td>
					<td>251,000</td>
				</tr>
				<tr>
					<td class="table_color">그랜져3.0(L),3.3(G)</td>
					<td>191,000</td>
					<td>245,000</td>
					<td>273,000</td>
				</tr>
				<tr>
					<td class="table_color">G70 3.3(G),스팅어 3.3(G)</td>
					<td>232,000</td>
					<td>299,000</td>
					<td>332,000</td>
				</tr>
		</table>
		<h1></h1>
		<div class="car_text">대형</div>
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="350" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">G80 2.5,K9 3.3</td>
					<td>439,000</td>
					<td>395,000</td>
					<td>373,000</td>
					<td>351,000</td>
				</tr>
				<tr>
					<td class="table_color">G80 3.3T,3.5/3.8,K9 3.8</td>
					<td>492,000</td>
					<td>443,000</td>
					<td>418,000</td>
					<td>394,000</td>
				</tr>
				<tr>
					<td class="table_color">G90 3.3T/3.8</td>
					<td>527,000</td>
					<td>474,000</td>
					<td>448,000</td>
					<td>422,000</td>
				</tr>
				<tr>
					<td class="table_color">G90 5.0</td>
					<td>664,000</td>
					<td>580,000</td>
					<td>547,000</td>
					<td>515,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="350" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">G80 2.5,K9 3.3</td>
					<td>246,000</td>
					<td>316,000</td>
					<td>351,000</td>
				</tr>
				<tr>
					<td class="table_color">G80 3.3T,3.5/3.8,K9 3.8</td>
					<td>276,000</td>
					<td>354,000</td>
					<td>394,000</td>
				</tr>
				<tr>
					<td class="table_color">G90 3.3T/3.8</td>
					<td>295,000</td>
					<td>379,000</td>
					<td>422,000</td>
				</tr>
				<tr>
					<td class="table_color">G90 5.0</td>
					<td>361,000</td>
					<td>464,000</td>
					<td>515,000</td>
				</tr>
		</table>
		<h1></h1>
		<div class="car_text">SUV</div>
		<p>
		<div class="1day_pay">대여기간별 일일 요금</div>
		<p>
			<table width="1000" height="450" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">1~2일</td>
					<td class="table_color">3~4일</td>
					<td class="table_color">5~6일</td>
					<td class="table_color">7일이상</td>
				</tr>
				<tr>
					<td class="table_color">스토닉,베뉴,코나,셀토스,니로,QM3,티볼리,코란도,트랙스,XM3,트레일블레이저</td>
					<td>198,000</td>
					<td>178,000</td>
					<td>168,000</td>
					<td>158,000</td>
				</tr>
				<tr>
					<td class="table_color">투싼,스포티지,이쿼녹스</td>
					<td>240,000</td>
					<td>216,000</td>
					<td>204,000</td>
					<td>192,000</td>
				</tr>
				<tr>
					<td class="table_color">싼타페,쏘렌토,QM6</td>
					<td>270,000</td>
					<td>243,000</td>
					<td>230,000</td>
					<td>216,000</td>
				</tr>
				<tr>
					<td class="table_color">팰리세이드</td>
					<td>374,000</td>
					<td>337,000</td>
					<td>318,000</td>
					<td>299,000</td>
				</tr>
				<tr>
					<td class="table_color">모하비,GV70,트래버스</td>
					<td>438,000</td>
					<td>394,000</td>
					<td>372,000</td>
					<td>350,000</td>
				</tr>
				<tr>
					<td class="table_color">GV80</td>
					<td>495,000</td>
					<td>446,000</td>
					<td>421,000</td>
					<td>396,000</td>
				</tr>
		</table>
		<p>
		<div class="sigan_pay">대여시간별 요금</div>
		<p>
			<table width="1000" height="450" border="1">
				<tr width="250">
					<td width="250" class="table_color">차종명</td>
					<td class="table_color">6시간</td>
					<td class="table_color">10시간</td>
					<td class="table_color">12시간</td>
				</tr>
				<tr>
					<td class="table_color">스토닉,베뉴,코나,셀토스,니로,QM3,티볼리,코란도,트랙스,XM3,트레일블레이저</td>
					<td>110,000</td>
					<td>143,000</td>
					<td>158,000</td>
				</tr>
				<tr>
					<td class="table_color">투싼,스포티지,이쿼녹스</td>
					<td>134,000</td>
					<td>173,000</td>
					<td>192,000</td>
				</tr>
				<tr>
					<td class="table_color">싼타페,쏘렌토,QM6</td>
					<td>151,000</td>
					<td>194,000</td>
					<td>216,000</td>
				</tr>
				<tr>
					<td class="table_color">팰리세이드</td>
					<td>209,000</td>
					<td>269,000</td>
					<td>299,000</td>
				</tr>
				<tr>
					<td class="table_color">모하비,GV70,트래버스</td>
					<td>245,000</td>
					<td>315,000</td>
					<td>350,000</td>
				</tr>
				<tr>
					<td class="table_color">GV80</td>
					<td>277,000</td>
					<td>356,000</td>
					<td>396,000</td>
				</tr>
		</table>
		<p>
		<li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.</li>
		<li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 이젠렌터카 회원은 회원등급에 따라 더 저렴하게 이용하실 수 있습니다.</li>
	</div>
	<div id = "third">
		<h1>추가요금</h1>
		<hr>
		<table width="1000" border="0">
		<tr>
			<td>
				<div class="img_box">
					<img src="../resources/info_img/추가요금.png" width="120" height="450">
				</div>
			</td>
			<td>
				<div class="descri_box">
					<p>
					<li align="left">휴차 보상료</li>
					<p>
					차량대여 중 발생한 자차사고(임차인 가해사고)로 인해 차량의 수리가 필요한 경우, 차량수리 기간동안 차량에 발생한 영업손실에 대해
					차량수리비 이외 표준대여료의 50% 휴차보상료가 고객 부담입니다.
					<li align="left">차량수리비</li>
					<p>
					차량대여 중 렌터카의 손망실이 발생한 경우의 (임차인 과실사고 및 가해자 불명의 자차사고) 렌터카 수리비는 고객 부담이며 렌터카 수리 시
					특별한 사유를 제외하고 롯데렌터카와 협의를 거쳐 정해진 곳에서 수리를 해야 합니다.
					<p>
					<li align="left">교통법규 위반 범칙금</li>
					<p>
					차량 대여 중 도로교통법 위반으로 발생한 모든 범칙금은 고객 부담.(주정차 위반, 버스전용차선위반, 안전벨트 미착용 등)이며, 도로교통법 위반에
					따른 사고의 경우 보험보상의 일부 혜택을 받지 못 할 수도 있습니다.
					<p>
					<li align="left">차량유류비</li>
					<p>
					모든 차량은 Full-Tank(연료를 가득 채운 상태) 에서 대여해 드리며 반납시에도 Full-Tank 상태로 반납을 해야 합니다.
					연료가 가득 채워지지 않았을 경우에는 가득 주유 시 예상되는 금액으로 주유 비용을 정산해야 합니다.
					실비정산시, 지점 내 데스크에 비치된 유류정산 기준표 참고
				</div>
			</td>
		</tr>
		</table>
	</div>
	<div>
	<h1>대여절차</h1>
	<hr>
	<p>
		<div>
			<img src="../resources/info_img/대여절차.png" width="1000" height="350">
		</div>
	</div>
	<div>
	<h1>반납절차</h1>
	<hr>
	<p>
		<div>
			<img src="../resources/info_img/반납절차.png" width="1000" height="350">
		</div>
	</div>
	<div id	="fourth">
		<h1>보험 및 보상</h1>
		<hr>
		<p>
		<div class="bold_text">차량 사고 시 보험 및 보상범위</div>
		<p>
		이젠렌터카의 모든 차량은 차량 이용 중 사고가 발생하였을 때 아래의 보험 보상범위 내에서 고객님을 보호하기 위해 최선을 다하겠습니다.
		<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">대인</td>
					<td class="table_color">무한</td>
				</tr>
				<tr>
					<td class="table_color">대물</td>
					<td>사고 건당 2천만원</td>
				</tr>
				<tr>
					<td class="table_color">자손</td>
					<td>개인당 1천5백만원 (*계약서상 등록되지 않은 운전자는 종합보험 혜택 불가)</td>
				</tr>
			</table>
	</div>
	<div id	="fifth">
		<h1>자차 손해 면책제도(CDW)</h1>
		<hr>
		<p>
		차량대여 중 귀책사유로 인하여 발생하는 모든 차량손해(손, 망실)는 고객님의 책임이 발생하며, 자차손해 면책제도(CDW)에 가입하신 경우 고객의 실수로 발생한 자차사고에 대한 보호를 받으실 수가 있습니다. 자차손해 면책제도 가입은 고객님의 선택 사항입니다.
		<p>
		<div class="bold_text">차량 사고 시 보험 및 보상범위</div>
		<p>
		CDW 면책금액에 따라 차량손해의 액수에 상관없이 사고로 인한 파손 부위 1건당 5만원~30만원만 지불하시면 차량손해에 대한 책임을 보호 받을 수 있습니다.
		(고객부담금 면제 상품 가입 시에는 차량손해 액수에 상관없이 고객부담금이 없습니다.)
		<p>
			<table width="1000" height="150" border="1">
				<tr width="250">
					<td width="250" class="table_color">구분</td>
					<td class="table_color">국산차량</td>
				</tr>
				<tr>
					<td class="table_color">내륙</td>
					<td>고객부담금 면제 / 5만원 / 30만원</td>
				</tr>
			</table>
			<p>
			자차손해 면책제도의 면책금 가입 종류에 따라 가입 요금이 다릅니다.
			<p>
			<div class="bold_text">차량 수리비</div>
			<p>
			차량대여 중 발생하는 귀책사유로 인한 당사 차량손해(손, 망실)는 고객님께서 차량 수리비를 지불하셔야 합니다.
			자차손해 면책제도(CDW )를 가입한 경우 차량수리비가 면책금 종류에 따라 가입된 면책금 미만인 경우에는 실비정산을 하며,
			가입된 면책금 이상인 경우 각각 가입 하신 최고의 면책금만 지불하시면 됩니다.
			<p>
			<div class="bold_text">휴차보상료</div>
			<p>
			자차손해 면책제도 가입 유무와 관계없이 사고로 인하여 차량이 휴차 할 경우에는 차량 운영의 차질로 인하여 발생한 수리기간 동안
			대여차량 정상요금의 50%에 해당하는 휴차보상료가 청구됩니다.
			<p>
			<table width="1000" height="250" border="1">
				<tr width="250">
					<td width="250" class="table_color">구분</td>
					<td class="table_color">국산차량</td>
				</tr>
				<tr>
					<td class="table_color">청구기준</td>
					<td>차량 잔존가 대비 50% 이상의 파손 발생 시 청구(CDW 가입여부 무관)</td>
				</tr>
				<tr>
					<td class="table_color">청구금액</td>
					<td>(사고 건당 수리일) X (대여차량 1일 대여요금 50% 할인금액)</td>
				</tr>
			</table>
	</div>
	<div>
		<h1>기타 안내(CDW)</h1>
		<hr>
		<p>
				<table width="1000" border="0">
		<tr>
			<td>
				<div class="img_box">
					<img src="../resources/info_img/기타안내.png" width="100" height="350">
				</div>
			</td>
			<td>
				<div class="descri_box">
					<p>
					<li align="left">교통 법규</li>
					<p>
					임차인 및 운전자는 교통법규 위반 시 제반사항은 임차인 본인의 책임입니다.
					<p>
					도로교통법 위반 시 보험보상의 일부 혜택을 받지 못할 수도 있습니다.
					<li align="left">연료 및 주행거리</li>
					<p>
					유류비는 임차인 본인의 부담입니다.
					모든 차량은 대여 시 Full-Tank 서비스를 제공중이기 때문에 출발시와 동일하게 Full-Tank로 반납하여야 합니다.
					주행거리에는 제한이 없습니다.
					<p>
					<li align="left">계약 연장</li>
					<p>
					대여 중 부득이하게 계약 연장 필요 시, 사전에 대여지점의 동의를 받아야 합니다 .
					연장 시, 초과요금은 임차인이 부담하여야 합니다.
					사전 동의 없이 연장 사용기간 중 발생한 차량손해에 대해서는 보험 및 보상의 혜택을 받지 못할 수도 있습니다.
					<p>
				</div>
			</td>
		</tr>
		</table>
	</div>
	<div class="btn1" align="center"> <input type="button" value="예약하기" onclick="reserve_btn()"> </div>
</section>
</body>
</html>