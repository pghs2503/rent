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
   section input[type=submit] {
      width:140px;
      height:40px;
      font-size:20px;
      border:1px solid #EAEAEA;
      background:white;
      color:black;
      font-weight:bold;
    }
</style>
   <script>

   </script>
</head>
<body>
 <section>
 	<div class="main_text">상담신청</div>
	<p>
   <form method="post" action="counsel_write_ok">
     <table width="500" align="center">
     <tr>
       <td> 이름 </td>
       <td> <input type="text" name="name"  size="45"> </td>
     </tr>
     <tr>
       <td> 연락처 </td>
       <td> <input type="text" name="phone"  size="45"> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type="text" name="email"  size="45"> </td>
     </tr>
     <tr>
       <td> 사용목적 </td>
       <td> <textarea cols="50" rows="6" name="content"></textarea> </td>
     </tr>
     <tr>
       <td align="center" colspan="2"> <input type="submit" value="상담신청하기">  </td>
     </tr>
   </table>
   </form>
		
</section>
</body>
</html>