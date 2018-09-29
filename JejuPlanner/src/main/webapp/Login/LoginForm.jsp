<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
.loginbody{
  top:0;
 left:0;
 bottom:0;
 right:0;
  width:100%;
  height:100%;
  display:none;
  z-index:500;
  opacity:0.8;
  background-color: black;
  position: absolute;
}

.logintable{
top:10%;
z-index:1;
margin:auto;
width:260px;
height:260px;
padding-top:26px;
border-spacing:0px;
background: white;
cell-spacing:0px;
border-radius: 12px; 
}
.tr1{
width:260px;
height:104px;
}

.tr2{
width:260px;
height:52px;
}

.tr1 td{
width:260px;
text-align: center;
}
.tr1 td input{
text-align: center;
width:220px;
height:30px;
border:none; 
background-color:#f7f7f7;
border-radius: 6px;
}
 
.tr1 td input:focus {
	text-align:left;
	width:220px;
	padding-left: 10px;
}



.tr2 td{
text-align: center;
} 

.tr2 td input{
border:none;
border-radius: 5px;
width:200px;
height:30px;
text-decoration: none;
background-color: white;
box-shadow: 2px 2px #999;
transition: all 0.5s;
cursor: pointer;
}

.tr2 td input:hover{
background-color: black;
color:white;
}

.tr2 td span{
font-size: 13px;
height:18px;
}

.tr2 td a{
height:20px;
font-size: 13px;
font-weight: bold;
}

.tr2 td a:hover{
text-decoration: underline;
}


</style>
<body>
<div class="loginbody">
<table class="logintable">
<tr class="tr1">
<td>
<input type="text" id="userid" name="userid" placeholder="ID">
<br>
<br>
<input type="text" id="userpw" name="userpw" placeholder="PASSWORD">
</td>
</tr>
<tr class="tr2">
<td>
<input type="button" onclick="" value="login">
<br>
<br>
<span>계정이 없습니까?</span>&nbsp;<a href="#">회원가입</a>
<br>
<a href="#">비밀번호가 기억나지 않습니까?</a>

</td>
</tr>
</table>
</div>

</body>
</html>