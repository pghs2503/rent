<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <table width="500" align="center">
     <tr>
       <td> 이름 </td>
       <td> ${ivo.name} </td>
     </tr>
     <tr>
       <td> 연락처 </td>
       <td> ${ivo.phone} </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> ${ivo.email} </td>
     </tr>
     <tr>
       <td> 작성일 </td>
       <td> ${ivo.writeday} </td>
     </tr>	
     <tr>
       <td> 내용 </td>
       <td> ${ivo.content} </td>
     </tr>
     <tr>
       <td colspan="2" align="center">
         <a href="counsel_delete">삭제</a>
         <a href ="counsel_list">목록 </a>
       </td>
     </tr>
   </table>
</body>
</html>


