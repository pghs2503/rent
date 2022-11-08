
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{
	margin: 0;
	margin: auto;
}
section{
	margin: auto;
	margin-top: 30px;
	margin-bottom: 30px;
}
section #main{
	width: 700px;
	height: 700px;
	margin: auto;
	text-align: left;
}
section #main span{
	display: inline-block;
	height: 60px;
}
section #main #right{
	width: 200px;
	float: left;
}
section #main #left{
	width: 490px;
	float: left;
}
section #logo{
	margin-top: 70px;
	text-align: center;
	margin-bottom: 50px;
}
section input[type=text]{
	width: 150px;
	height: 20px;
	outline: none;
}
section select{
	width: 170px;
	height: 24px;
	
}
section select[name=dae], select[name=jung], select[name=so]{
	width: 70px;
	height: 24px;
}



</style>
<script>
 	function getjung(daecode) {
		var chk = new XMLHttpRequest();
		chk.open("get", "getjungcode?daecode=" + daecode);
		chk.send();
		chk.onreadystatechange = function() {
			if (chk.readyState == 4) {
				// alert(chk.responseText);
				var jung = decodeURI(chk.responseText.trim());
				jung = "<option> 선택 </option>" + jung;
				document.inpro.jung.innerHTML = jung;
			}
		}
	}
	function getso(jung) {
		var dae = document.inpro.dae.value;
		var daejung = dae + jung;
		//alert(daejung);
		var chk = new XMLHttpRequest();
		chk.open("get", "getsocode?daejung=" + daejung);
		chk.send();
		chk.onreadystatechange = function() {
			if (chk.readyState == 4) {
				//alert(chk.responseText);
				document.inpro.so.innerHTML = decodeURI(chk.responseText.trim());
			}
		}
	}

	function bunho() {
		// 대,중,소의 value값을 가져와서 연결하기
		var dae = document.inpro.dae.value;
		var jung = document.inpro.jung.value;
		var so = document.inpro.so.value;
		var code = "p" + dae + jung + so;
		//alert(code);
		var chk = new XMLHttpRequest();
		chk.open("get", "getbunho?code=" + code);
		chk.send();
		chk.onreadystatechange = function() {
			if (chk.readyState == 4) {
				//alert(chk.responseText);
				// 1을 증가후 상품코드를 완성한후  텍스트에 전달
				var bunho = parseInt(chk.responseText) + 1;
				//alert(bunho);
				// bunho의 값을 3자리로 변경
				bunho = bunho + ""; // String(bunho);   ,  bunho.toString();
				if (bunho.length == 1) {
					bunho = "00" + bunho;
				} else if (bunho.length == 2) {
					bunho = "0" + bunho;
				}
				// p 대 중 소 bunho를 연결한다
				document.inpro.pcode.value = code + bunho;
			}
		}
	} 
	function danjangprice(danjang) {
		if (danjang == "dan")
			document.getElementById("danjang").innerHTML = "<input type='text' name='danprice' placeholder='단기가격입력'>";
		else if(danjang == "jang")
			document.getElementById("danjang").innerHTML = "<input type='text' name='jangprice' placeholder='장기가격입력'>";
	}
	function out_color(i){
		if(i==1)
			document.inpro.colorout.value="검정색";
		else if(i==2)
			document.inpro.colorout.value="하얀색";
		else if(i==3)
			document.inpro.colorout.value="파란색";
		else if(i==4)
			document.inpro.colorout.value="빨간색";
		else if(i==5)
			document.inpro.colorout.value="그레이";
	}
	function in_color(i){
		if(i==1)
			document.inpro.colorin.value="검정색";
		else if(i==2)
			document.inpro.colorin.value="네이비";
		else if(i==3)
			document.inpro.colorin.value="그레이";
		else if(i==4)
			document.inpro.colorin.value="화이트";
		else if(i==5)
			document.inpro.colorin.value="브라운";
		
		
	}
</script>
</head>
<body>
	<!-- pro_write.jsp : 상품 입력 폼 -->
	
	
	<section>
	
	
		<div id="main">
			<div id="logo">
				<img src="../resources/img/이젠.png"><h2>상품 등록</h2>
			</div>
			
			<div id="right">
				<span>상품코드</span><br>
				<span>차이름</span><br>
				<span>상품제조사</span><br>
				<span>상품메인 이미지</span><br>
				<span>상품상세 이미지</span><br>		
				<span>단기/장기 선택</span><br>
				<span>차넘버</span><br>
				<span>몇인승</span><br>
				<span>년식</span><br>
				<span>기름종류</span><br>
				<span>연비</span><br>
				<span>등급</span><br>
				<span>휠</span><br>
				<span>외장색</span><br>
				<span>내장색</span><br>
				<span>썬루프</span><br>
				<span>네비게이션</span><br>
				<span>오토</span><br>
			</div>
			<div id="left">
			<form method="post" name="inpro" action="code_ok" encType="multipart/form-data">
				<span>
				<input type="text" name="pcode" readonly/><br>				
				<select name="dae" onchange="getjung(this.value)">
					<option>선택</option>
					<c:forEach items="${list}" var="dvo">
						<option value="${dvo.code}">${dvo.title}</option>
					</c:forEach>
				</select> <select name="jung" onchange="getso(this.value)">
				</select> <select name="so">
				</select> <input type="button" onclick="bunho()" value="상품코드생성"> </span> <br>		
				<span><input type="text" name="title"></span> <br>
				<span><input type="text" name="made"></span> <br>
				<span><input type="file" name="pimg"> </span><br>
				<span><input type="file" name="cimg"></span> <br>
				<span><select name="carjong" onchange="danjangprice(this.value)">
					<option>선택</option>
					<option value="dan">단기</option>
					<option value="jang">장기</option>
				</select>
				&nbsp;&nbsp;&nbsp;<span  id="danjang"><input type="text" readonly/></span></span><br>
				<span><input type="text" name="carnum"></span><br>
				<span><input type="text" name="seats"></span><br>
				<span><input type="text" name="year"></span><br>
				<span> <input type="text" name="oiljong"></span><br>
				<span><input type="text" name="yeonbi"></span><br>
				<span><select name="grade">
					<c:forEach var="g" begin="1" end="4">
						<option value="${g}">${g}</option>
					</c:forEach>
				</select></span><br>
				<span><select name="wheel">
					<option value="1">기본</option>
					<option value="2">인치업</option>
				</select></span><br>
				<span><select name="outcolor" onchange="out_color(this.value)">
				<option>선택</option>
					<c:forEach var="oc" begin="1" end="5">
						<option value="${oc}">${oc}</option>
					</c:forEach>
				</select> <span><input type="text" name="colorout" readonly/></span></span><br>
				<span><select name="incolor" onchange="in_color(this.value)">
				<option>선택</option>
					<c:forEach var="ic" begin="1" end="5">
						<option value="${ic}">${ic}</option>
					</c:forEach>
				</select> <span><input type="text" name="colorin" readonly/></span></span><br>
				<span><select name="sunroof">
					<option>선택</option>
					<option value="x">없음</option>
					<option value="basic">기본</option>
					<option value="pano">파라노마</option>
				</select></span><br>
				<span> <select name="nav">
					<option value="basic">기본</option>
					<option value="basicup">틸트인</option>
					<option value="inchup">인치업</option>
				</select></span><br>
				<span><select name="auto">
					<option value="1">오토</option>
					<option value="2">수동</option>
				</select></span><br>
				<span><input type="submit" value="등록하기"></span><br>
				</form>
			</div>

		</div>
	


	</section>
</body>
</html>
