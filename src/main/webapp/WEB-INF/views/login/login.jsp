<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:if test="${err == 1 }">
	<script>
		alert("아이디 및 비밀번호가 일치하지 않습니다");
	</script>
</c:if>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
	margin: 0px;
	margin: auto;
}
section{
	widows: 400px;
	height: 500px;
	margin: auto;
	text-align: center;
}
#logo{
	margin-top: 350px;
}
#first{
	margin-top: 50px;
}
input[type=text], input[type=password]{
	width: 360px;
	height: 40px;
	margin-top: 10px;
	outline: none;
}
input[type=submit]{
	width: 368px;
	height: 43px;
	margin-top: 10px;
}
#loginErr{
	margin-top: 8px;
}
#second > div{
	display: inline-block;
	margin-top: 10px;
	font-size: 12px;
	color:#9a9a9a;
}
#usearch, #psearch{
	display: none;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

$(function(){
	
	$("#userid_search").click(function(){
		
		$("#usearch").css("display","block");
		$("#psearch").css("display","none");
		$("#psearch input[type=text]").val("");
		$("#ssss").text("");
		
	});
	$("#pwd_search").click(function(){
		
		$("#psearch").css("display","block");
		$("#usearch").css("display","none");
		$("#usearch input[type=text]").val("");
		$("#ssss").text("");
	});
	
	
	$("#userid_search input[type=button]").click(function(){
		
		var name = $("#userid_search input[name=name]").val();
		var phone = $("#userid_search input[name=phone]").val();
		
		var chk = new XMLHttpRequest();
		chk.open("get","userid_search?name="+name+"&phone="+phone);
		chk.send();
		chk.onreadystatechange=function(){
			
			if(chk.readyState==4){
				
				if(chk.responseText != "0"){
					$("#ssss").text("아이디 : "+chk.responseText).css("color","blue");
				}
				else
					$("#ssss").text("정보가 틀렸습니다").css("color","red");
				
			}
		}
	});
	
	$("#pwd_search input[type=button]").click(function(){
		
		var userid = $("#pwd_search input[name=userid]").val();
		var name = $("#pwd_search input[name=name]").val();
		var phone = $("#pwd_search input[name=phone]").val();
		
		var chk = new XMLHttpRequest();
		chk.open("get","pwd_search?userid="+userid+"&name="+name+"&phone="+phone);
		chk.send();
		chk.onreadystatechange=function(){
			
			if(chk.readyState==4){
				
				if(chk.responseText != "0"){
					$("#ssss").text("비밀번호 : "+chk.responseText).css("color","blue");
				}
				else{
					$("#ssss").text("정보가 틀렸습니다").css("color","red");
				}
			}
		}
	});
	
});

</script>
</head>
<body>

<section>

	<div id="logo"><img src="../resources/img/이젠.png"></div>

	<div id="first">
	
	
	<form method="post" action="login_ok">
	<div><input type="text" name="userid" placeholder="아이디입력"></div>
	
	<div><input type="password" name="pwd" placeholder="비밀번호입력"></div>
	
	<div><input type="submit" value="로그인"></div>
	</form>
	
	<div id="loginErr" style="font-size:10px;"></div>

	</div>
	
	<div id="second">
	 
	 <div id="userid_search">아이디찾기</div> 
	 | 
	 <div id="pwd_search">비밀번호찾기</div> 
	 | 
	 <div onclick="location='../member/member_input_info'">회원가입</div>
 
	 </div>
	 
	 <div id="ssss"></div>

	<div id="usearch">
		
		<form method="post" action="userid_search"></form>
		<div><input type="text" name="name" placeholder="이름을 입력하세요"></div>
		<div><input type="text" phone="phone" placeholder="전화번호를 입력하세요"></div>
		<div><input type="submit" value="아이디찾기"></div>
		
	</div>
	
	<div id="psearch">
	
		<form method="post" action="pwd_search">
		<div><input type="text" name="userid" placeholder="아이디를 입력하세요"></div>
		<div><input type="text" name="name" placeholder="이름을 입력하세요"></div>
		<div><input type="text" phone="phone" placeholder="전화번호를 입력하세요"></div>
		<div><input type="submit" value="비밀번호 찾기"></div>
		</form>
		
	</div>
	
</section>

</body>
</html>