<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">
<style>
/* 검색창 만들기 끝 */
#image {
	width: 1300px;
	height: 500px;
	background: red;
	margin: auto;
}

#image #outer {
	width: 1300px;
	height: 500px;
	overflow: hidden;
}

#image #inner {
	width: 5000px;
	height: 600px;
}

section {
	width: 1500px;
	height: 900px;
	margin: auto;
}

section #ar2 {
	width: 1500px;
	height: 300px;
	background: white;
	margin: auto;
}

section #ar3 {
	width: 1500px;
	height: 300px;
	background: #B2CCFF;
	margin: auto;
}

section #ar4 {
	width: 1500px;
	height: 300px;
	background: white;
	margin: auto;
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
section input[type=text] {
      width:190px;
      height:40px;
      font-size:20px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
}
section input[type=submit] {
      width:220px;
      height:40px;
      font-size:20px;
      border:1px solid red;
      background:red;
      color:black;
      font-weight:bold;
}
p {
	margin-top: 10px;
}

section #ar2 .container {
	width: 100%;
}

section #ar2 .modal-btn-box {
	width: 100%;
	text-align: center;
}

section #ar2 .modal-btn-box button {
	display: inline-block;
	width: 150px;
	height: 50px;
	background-color: #ffffff;
	border: 1px solid #e1e1e1;
	cursor: pointer;
	padding-top: 8px;
}

section #ar2 .popup-wrap {
	background-color: rgba(0, 0, 0, .3);
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 0px;
}

section #ar2 .popup {
	width: 800px;
	height: 700px;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	/*  background-color:#264db5; */
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

section #ar2 .popup-head {
	width: 100%;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
}

section #ar2 .head-title {
	font-size: 15px;
	font-weight: 700;
	text-align: center;
}

section #ar2 .popup-body {
	width: 100%;
	height: 50%;
	background-color: #ffffff;
}

section #ar2 .body-content {
	width: 800px;
	padding: 30px;
	display: inline;
}

section #ar2 .body-content #area {
	width: 180px;
	background-color: white;
	float: left;
}

section #ar2 .body-content #area2 {
	width: 400px;
	background-color: white;
	float: right;
}

section #ar2 .body-titlebox {
	text-align: center;
	width: 100%;
	height: 40px;
	margin-bottom: 10px;
}

section #ar2 .body-contentbox {
	word-break: break-word;
	overflow-y: auto;
	height: 500px;
}

section #ar2 .popup-foot {
	width: 100%;
	height: 50px;
	float: botton;
}

section #ar2 .pop-btn {
	display: inline-flex;
	width: 50%;
	float: left;
	justify-content: center;
	align-items: center;
}

section #ar2 #area {
	list-style: none;
	margin: 0px;
}

section #ar2 #area>li button {
	display: inline-block;
	width: 200px;
	height: 30px;
	background-color: #f0f0f0;
	border: 1px none #e1e1e1;
	cursor: pointer;
}

section #ar2 #area2>li button {
	display: inline-block;
	width: 200px;
	height: 30px;
	background-color: #f0f0f0;
	border: 1px none #e1e1e1;
	cursor: pointer;
} 

section #ar2 #area li button:hover {
	background-color: #59b1eb;
}

section #ar2 #area2 li button:hover {
	background-color: #59b1eb;
}

/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
.ui-widget-header { border: none !important; background-color: transparent !important; }

.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover, html .ui-button.ui-state-disabled:active {
    border: 1px solid #fff !important;
    background: #fff !important;
    font-weight: normal !important;
    color: #454545 !important;
    text-align: center !important;
    font-size: 28px;
}

.ui-widget.ui-widget-content {
    width: 385px;
}

.ui-datepicker .ui-datepicker-title {
    font-size: 23px;
}

.ui-datepicker .ui-datepicker-header {
    width: 100%;
}

.ui-datepicker th {
    font-size: 21px;
    padding: 0.7em !important;
}

.ui-datepicker-calendar th:first-child {
   color: #ff0000 !important;
}

.ui-datepicker-calendar th:nth-last-child(1) {
   color: #0d47a1 !important;
}

.ui-datepicker-calendar tr td:first-child a {
   color: #ff0000 !important;
}

.ui-datepicker-calendar tr td:nth-last-child(1) a {
   color: #0d47a1 !important;
}

</style>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!--한국어  달력 쓰려면 추가 로드-->
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>
<script>
	$(function() {
		// 슬라이드 그림 움직이기
		function mainmove() {
			ss = setInterval(function() {
				$("#image #inner").animate(
						{
							marginLeft : "-1300px"
						},
						2000,
						function() {
							$("#image #inner").css("margin-left", "0px");
							$("#image #inner img").eq(0).insertAfter(
									$("#image #inner img").eq(4));
						});
			}, 4000);
		}
		mainmove();

		$("#image #outer").mouseover(function() {
			clearInterval(ss);
		});
		$("#image #outer").mouseout(function() {
			mainmove();
		});
		$("#confirm").click(function() {
			modalClose();
			//컨펌 이벤트 처리
		});
		$("#modal-open").click(function() {
			$("#popup").css('display', 'flex').hide().fadeIn();
		});
		$("#close").click(function() {
			modalClose();
		});
		function modalClose() {
			$("#popup").fadeOut();
		}
		
	});
	function move(n) {
		if(n==0)
		{
			document.pkc.area.value=document.pkc.gn.value;
			document.getElementById("btn1").style.backgroundColor = "red";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==1)
		{
			document.pkc.area.value=document.pkc.gs.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "red";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==2)
		{
			document.pkc.area.value=document.pkc.gb.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "red";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==3)
		{
			document.pkc.area.value=document.pkc.gd.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "red";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==4)
		{
			document.pkc.area.value=document.pkc.gy.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "red";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==5)
		{
			document.pkc.area.value=document.pkc.sn.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "red";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==6)
		{
			document.pkc.area.value=document.pkc.bc.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "red";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==7)
		{
			document.pkc.area.value=document.pkc.sw.value;
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "red";
		}
	}
	function area_sel(n)
	{
		if(n==0)
		{
			document.getElementById("kyunggi").style.display="none";
			document.getElementById("seoul").style.display="none";
			document.getElementById("area_btn1").style.backgroundColor = "white";
			document.getElementById("area_btn2").style.backgroundColor = "white";
			document.getElementById("btn1").style.backgroundColor = "white";
			document.getElementById("btn2").style.backgroundColor = "white";
			document.getElementById("btn3").style.backgroundColor = "white";
			document.getElementById("btn4").style.backgroundColor = "white";
			document.getElementById("btn5").style.backgroundColor = "white";
			document.getElementById("btn6").style.backgroundColor = "white";
			document.getElementById("btn7").style.backgroundColor = "white";
			document.getElementById("btn8").style.backgroundColor = "white";
		}
		else if(n==1)
		{
			area_btn1
			document.getElementById("area_btn1").style.backgroundColor = "red";
			document.getElementById("area_btn2").style.backgroundColor = "white";
			document.getElementById("kyunggi").style.display="none";
			document.getElementById("seoul").style.display="block";
		}
		else if(n==2)
		{
			document.getElementById("area_btn1").style.backgroundColor = "white";
			document.getElementById("area_btn2").style.backgroundColor = "red";
			document.getElementById("seoul").style.display="none";
			document.getElementById("kyunggi").style.display="block";
		}
	}

</script>
    
    <script>
    $(function() {
        //input을 datepicker로 선언
        $("#datepicker").datepicker({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
        });                    
        
        //초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
    });
    $(function() {
        //input을 datepicker로 선언
        $("#datepicker1").datepicker({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
        });                    
        
        //초기값을 오늘 날짜로 설정
        $('#datepicker1').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
    });
    </script>
</head>
<body>
 

	

<div id="image">
	<!-- 그림슬라이드 -->
	<div id="outer">
		<div id="inner">
			<img src="../resources/main/렌트4.png" width="1300" height="500"><img
				src="../resources/main/렌트1.png" width="1300" height="500"><img
				src="../resources/main/렌트2.png" width="1300" height="500"><img
				src="../resources/main/렌트3.png" width="1300" height="500"><img
				src="../resources/main/렌트.png" width="1300" height="500">
		</div>
	</div>
</div>
<p>
<section>
	<!-- 현재페이지의 필요한 내용 -->
	<!-- article는 section내의 하나의 항목 -->
	<article id="ar2">
		<form name="pkc" method="post" action="../reserve/reserve">
			<div class="container">
				<div class="modal-btn-box">
					<div><input type="text" id="modal-open" name="area" value="지역" onclick="area_sel(0)" readonly> 
							시작: <input type="text" id="datepicker" name="inday" value="datepicker" readonly>
					 		끝: <input type="text" id="datepicker1" name="outday" value="datepicker1" readonly></div>
					 <p>
					 <div>  <input type="submit" value="차량 검색">  </div>
				</div>
				
				<div class="popup-wrap" id="popup">
					<div class="popup">
						<div class="popup-head">
							<div class="head-title"> 지역 선택</div>
						</div>
						<table width="600" height="500" border="0" align="center">
							<tr align="center">
								<td width="250" height="500">
									<input type="button" name="seoul" value="서울" onclick="area_sel(1)" id="area_btn1">
	
									<input type="button" name="kyunggi" value="경기" onclick="area_sel(2)" id="area_btn2">
								</td>

								<td>
								 <span id="seoul" align="center" height="250">
									<input type="button" name="gn" value="강남" onclick="move(0)" id="btn1">
									<input type="button" name="gs" value="강서" onclick="move(1)" id="btn2">
									<input type="button" name="gb" value="강북" onclick="move(2)" id="btn3">
									<input type="button" name="gd" value="강동" onclick="move(3)" id="btn4">
								</span>
								<span id="kyunggi" align="center" height="250">
									<input type="button" name="gy" value="고양" onclick="move(4)" id="btn5">
									<input type="button" name="sn" value="성남" onclick="move(5)" id="btn6">
									<input type="button" name="bc" value="부천" onclick="move(6)" id="btn7">
									<input type="button" name="sw" value="수원" onclick="move(7)" id="btn8">
								</span>
								</td>
							</tr>
 
							<tr class="popup-foot">
								<td colspan="2">
									<span class="pop-btn confirm" id="confirm">확인</span>
									<span class="pop-btn close" id="close">창 닫기</span>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</form>
	</article>
	<!-- 최신 상품 -->
	
	<!-- 인기 상품 -->
	
	<!-- 특가 상품 -->
</section>


