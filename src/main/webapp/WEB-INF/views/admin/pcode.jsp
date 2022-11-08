<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	function getJung(daecode){
		
		var chk = new XMLHttpRequest();
		chk.onload=function(){
			
			var jung = decodeURI(chk.responseText.trim());
			
			jung = "<option> 선택 </option>"+jung;
			document.so.jung.innerHTML=jung;
		}
		chk.open("get","getJung?daecode="+daecode);
		chk.send();
		
	}
	
	function getSo(jung){
		var dae = document.so.dae.value;
		var daejung=dae+jung;
		//alert(daejung);
		var chk = new XMLHttpRequest();
		chk.onload=function(){
				code = parseInt(chk.responseText) + 1;
			code = code+"";
			if(code.length==1)
				code = "0"+code;
			document.so.code.value=code;
		}
		chk.open("get","getSo?daejung="+daejung);
		chk.send();
	}
</script>
<style>
section{
	width: 1000px;
	height: 700px;
	margin: auto;
}
</style>
</head>
<body>

<section>
<form method="post" action="dae_ok">
<table>
<tr>
<td><select name="code">
	<c:forEach var="i" begin="1" end="20">
	<option value="${i}">${i}</option>
	</c:forEach>
</select></td>
<td><input type="text" name="title" placeholder="제조사"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="대코드등록">
</td>
</table>
</form>
<hr>
<form method="post" action="jung_ok">
<table>
<tr>
<td colspan="2"> <select name="daecode">
<c:forEach items="${list}" var="dvo">
	<option value="${dvo.code}">${dvo.title}</option>
</c:forEach>
</select>
</td>
<tr>
<td><select name="code">
	<c:forEach var="i" begin="1" end="6">
	<option value="${i}">${i}</option>
	</c:forEach>
</select></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="중코드등록">
</td>
</table>
</form>

<hr>


<form method="post" name="so" action="so_ok">
<table>
<tr>
<td colspan="2"><select name="dae" onchange="getJung(this.value)">
<option>선택</option>
<c:forEach items="${list}" var="dvo">
<option value="${dvo.code}">${dvo.title}</option></c:forEach>
</select>
</td>
</tr>

<tr>
<td colspan="2"><select name="jung" onchange="getSo(this.value)">

</select>
</td>
</tr>


<tr>
<td><%-- <select name="code">
	<c:forEach var="i" begin="1" end="20">
	<option value="${i}">${i}</option>
	</c:forEach>
</select> --%>

<input type="text" name="code" readonly/></td>
<td><input type="text" name="title" placeholder="차종입력"> </td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="소코드등록">
</td>
</tr>
</table>
</form>



</section>

</body>
</html>