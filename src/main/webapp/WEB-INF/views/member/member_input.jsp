<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

body{
	margin: 0px;
	background:#f5f6f7;
}
#logo{
	margin: auto;
	font-size:36px;
	font-weight: bold;
	color:#00c850;
	margin-top: 80px;
	margin-bottom: 30px;
}
span{
	font-size:12px;
	font-weight: bold;
	display: inline-block;
	left:-80px;
	float: left;	
	margin: auto;
	margin-top: 5px;
}
section span:ntd-child(2){
	margin-top: 30px;
}
section span:ntd-child(6){
	margin-top: 30px;
}
section{
	text-align: center;
	width: 360px;
	margin: auto;
}

section div{
	margin-top: 8px;
	
}
#userid{
	width: 350px;
	height: 40px;
}
#pwd{
	width: 350px;
	height: 40px;
}
#name{
	width:350px;
	height: 40px; 
}
#year{
	width: 110px;
	height: 47px;
}
#month{
	width: 85px;
	height: 47px;
}
#day{
	width: 100px;
	height: 47px;
}
#sung{
	width: 360px;
	height: 43px;
}
#email{
	width: 350px;
	height: 40px;
}

#con{
	width: 360px;
	height: 43px;
}
#phone{
	width: 193px;
	height: 40px;
}
#btn{
	border: 1px solid #cccccc;
	padding-top:8px;
	width: 150px;
	height: 34px;
	background: #03c75a;
}
#phone2{
	width: 350px;
	height: 40px;
}
#sub{
	border: 1px solid #cccccc;
	width: 360px;
	height: 34px;
	padding-top: 8px;
	margin: auto;
	background: #03c75a;
}
#in > div{
	display: inline-block;
}
input[type=button]{
	width: 150px;
	height: 43px;
}
input[type=submit]{
	width: 360px;
	height: 43px;
	margin-top: 10px;
}
#hi{
	visibility: hidden;
}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(function(){
	
	var uchk = 0;
	$("input[name=userid]").blur(function(){
		
		var userid = $("input[name=userid]").val();
		var chk=new XMLHttpRequest();
    	chk.onload=function()
    	{
    		//alert(chk.responseText);
    		if(chk.responseText==1){
    			$("#useriderr").text("??????????????? ?????????").css("color","blue");
    			uchk=1;
    		}
    		else{
    			$("#useriderr").text("?????? ???????????? ?????????").css("color","red");
    			uchk=0;
    		}
    		
    	}
    	chk.open("get","useridChk?userid="+userid);
    	chk.send();
	}); 
	
	
	var pchk = 0;
	$("input[name=pwd2]").keyup(function(){
		
		var pwd = $("input[name=pwd]").val();
		var pwd2 = $("input[name=pwd2]").val();
		
		if(pwd==pwd2){
			$("#pwderr").text("???????????? ??????").css("color","blue");
			pchk = 1;
		}
		else{
			$("#pwderr").text("???????????? ??????").css("color","red");
			pchk = 0;
		}
	});
	
	$("form[name=pkc]").submit(function(){
		
		if($("input[name=pwd]").val().trim().length < 8){
			alert("8?????? ?????? ??????????????????");
			return false;
		}
		else if(uchk==0){
			alert("????????? ???????????????");
			return false;
		}
		else if(pchk==0){
			alert("???????????? ??????????????????");
			return false;
		}
		else if($("#phone").val() == ""){
			alert("?????????????????? ??????????????????");
			return false;
		}
		else if($("#phone2").val() == ""){
			alert("????????? ????????? ????????????");
			return false;
		}
		else if($("#year").val() == "yerr" || $("#month").val() == "merr" || $("#day").val() == "derr"){
			alert("??????????????? ??????????????????");
			return false;
		}
		else 
			return true;

	});
	
	$("input[name=rand]").click(function(){
		
		if($("#phone").val().trim().length < 11)
			alert("?????????????????? ???????????????");
		else
			$("#phone2").attr("value","982071")
			
		
	});
	
});
/* $(document).ready(function(){            
    var now = new Date();
    var year = now.getFullYear()-120;
    var nyear = now.getFullYear();
    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
    //?????? selectbox?????????               
    for(var i = nyear ; i >= year ; i--) {
        $('#year').append('<option value="' + i + '">' + i + '</option>');    
    }

    // ?????? selectbox ?????????            
    for(var i=1; i <= 12; i++) {
        var mm = i > 9 ? i : "0"+i ;            
        $('#month').append('<option value="' + mm + '">' + mm + '</option>');    
    }
    
    // ?????? selectbox ?????????
    for(var i=1; i <= 31; i++) {
        var dd = i > 9 ? i : "0"+i ;            
        $('#day').append('<option value="' + dd + '">' + dd+ '</option>');    
    }
    $("#year  > option[value="+nyear+"]").attr("selected", "true");        
    $("#month  > option[value="+mon+"]").attr("selected", "true");    
    $("#day  > option[value="+day+"]").attr("selected", "true");    
    
    
  
}); */
</script>

</head>
<body>
	
<section>
		
	
		
		<div id="logo"> <img src="../resources/img/??????.png" width=""></div>
			
		<form method="post" name="pkc" action="member_input_ok">	
		<input type="hidden" name="lo" value="${lo}">
		<input type="hidden" name="pr" value="${pr}">
	
		<span>?????????</span><br>
		<div><input type="text" name="userid" id="userid"><br><span id="useriderr" style="font-size:8px;text-align:center;"></span></div>
		<br><span>????????????</span><br>
		<div><input type="password" name="pwd" id="pwd"></div>
		<span>???????????? ?????????</span><br>
		<div><input type="password" name="pwd2" id="pwd"><br><span id="pwderr" style="font-size:8px;text-align:center;"></span></div>
		<br><span>??????</span><br>
		<div><input type="text" name="name" id="name"></div>
		<span>????????????</span><br>
		<div>
		<select name="yy" id="year">
		<option value="yerr">??????</option>
		<c:set var="nyear" value="${nyear}"/>
		<c:forEach var="i" begin="${year}" end="${nyear}" step="1">
		<option value="${nyear-i +year}">${nyear-i +year}</option>
		</c:forEach>	
		</select><b>???</b>
		<select name="mm" id="month">
		<option value="merr">??????</option>
		<c:forEach var="j" begin="01" end="12">
		<option value="${j}">${j}</option>
		</c:forEach>
		</select><b>???</b>
		<select name="dd" id="day">
		<option value="derr">??????</option>
		<c:forEach var="k" begin="01" end="31">
		<option value="${k}">${k}</option>
		</c:forEach>
		</select><b>???</b>
		
		</div>

		<span>??????</span><br>
		<div><select id="sung" name="sung">
			<option value="m">??????</option>
			<option value="f">??????</option>
			<option value="x">????????????</option>
		</select></div>
		<span>?????? ?????? ????????? (??????)</span><br>
		<div><input type="text" name="email" placeholder="????????????" id="email"></div>
		<span>????????????</span><br>
		<div><select id="con">
			<option>??????</option>
			<option selected>???????????? +82</option>
			<option>????????????</option>			
		</select></div>
		<div id="in"><div><input type="text" name="phone" id="phone" placeholder="???????????? ??????"></div> <input type="button" name="rand" value="????????????"></div>
		<div><input type="text" name="phone2" placeholder="???????????? ???????????????" id="phone2" readonly/></div>
		<div><input type="submit" value="??????"></div>
		
		</form>
		
</section>

</body>
</html>