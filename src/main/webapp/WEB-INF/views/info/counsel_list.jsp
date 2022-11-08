<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>
     table {
       border-spacing:0px;
     }
     td {
       border-top:1px solid black;
       height:34px;
     }
     tr:last-child td {
       border-bottom:2px solid black;
     }
     tr:first-child td {
       border-top:2px solid black;
     }
     a {
       color:black;
       text-decoration:none;
     }
  </style>
</head>
<body>
	<table width="600" align="center">
	<caption><h1>상담 리스트</h1></caption>
		<tr align="center">
			<td> 이름 </td>
			<td> 연락처 </td>
			<td> 이메일 </td>
			<td> 작성일 </td>
		</tr>
	<c:forEach items="${list}" var="ivo">
		<tr align="center">
			<td> <a href = "counsel_content?id=${ivo.id}"> ${ivo.name}</a> </td>
			<td> <a href = "counsel_content?id=${ivo.id}"> ${ivo.phone} </td>
			<td> ${ivo.email} </td>
			<td> ${ivo.writeday} </td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>