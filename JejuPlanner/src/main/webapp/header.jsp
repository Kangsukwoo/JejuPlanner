<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<style>
body{
height:100%;
}

.planbtn{
display:block;
margin:auto;
margin-bottom:10px;
width:140px;
height:40px;
border:none;
border-radius: 8px;
box-shadow: 0px 0px 1px 2px black;
background-color: white;
color:black;
font-weight: bold;
font-size: 20px;
   -webkit-transition-duration: 0.5s; /* Safari */
    transition-duration: 0.5s;
    line-height: 1.8;
   
}

.planbtn:hover{
font-size: 21px;
color:white;
background-color: black;
opacity: 0.8;
box-shadow: 0px 0px 1px 2px white;
line-height:1.9;
cursor: pointer;
}

.loginbtn{
display:none;
margin:auto;
margin-bottom:10px;
width:140px;
height:40px;
border:none;
border-radius: 8px;
box-shadow: 0px 0px 1px 2px black;
background-color: white;
color:black;
font-weight: bold;
font-size: 20px;
   -webkit-transition-duration: 0.5s; /* Safari */
    transition-duration: 0.5s;
    line-height: 1.8;
}

.loginbtn:hover{
font-size: 21px;
color:white;
background-color: black;
opacity: 0.8;
box-shadow: 0px 0px 1px 2px white;
line-height:1.9;
cursor: pointer;
}


.planday{
top:10%;
left:30%;

}
.plandaybody{
height:200%;
opacity: 0.9;
}


.Logintable{}
.Loginbody{}
</style>


  <meta charset="UTF-8">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="../css/Login.css"/>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/header.css">
  <link rel="stylesheet" href="../ajax/jquery-ui.css" />
  <link rel="stylesheet" href="../css/planmodal.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="../ajax/jquery.min.js"></script>
<script src="../ajax/jquery-ui.min.js"></script>
   	   
   	   <script>
   	      $(function(){
   	      	var pull=$('#pull');
   	      	    menu=$('#ul1');
   	      	    height=$(".div2");
   	      	var x = document.getElementsByClassName("div1");   
   	     var m = document.getElementsByClassName("div3");
   	      	    menuHeight=menu.height();   	      
   	      $(pull).on('click', function(e){
   	      	e.preventDefault();
   	      	menu.slideToggle();   	      	
   	      });
   	      $(window).resize(function(){
   	      	var w=$(window).width();
   	      	if(w>700){
   	      	menu.removeAttr('style');
   	        document.getElementById("body1").style.overflowX = "none";
   	      	}else{document.getElementById("body1").style.overflowX = "none";}   
   	      	 if(w>1000){
		     	 for(var i = 0; i < m.length; i++){
		     		m[i].style.width="25%";
		     		m[i].style.cssFloat="left";
		     		m[i].style.height="100%";
		     	 }
	     	 }else if(w<1000){
	   	     	 for(var i = 0; i < m.length; i++){
	   	     		 m[i].style.width="100%";
	   	     		 m[i].style.cssFloat="none"; 
	   	     	     m[i].style.height="25%";	   	     	     
	   	     	 }	 
	     	 }
   	      });
   	  });
   	      
   	     
   	      
   	   function loads(){
   		var m = document.getElementsByClassName("div3");
	      	var w=$(window).width();
	      	if(w>700){
	        
	        document.getElementById("body1").style.overflow = "none";
	      	}else{document.getElementById("body1").style.overflow = "none";}   
	      	
	 if(w>1000){
	  
	     	 for(var i = 0; i < m.length; i++){
	     		m[i].style.width="25%";
	     		m[i].style.cssFloat="left";
	     		m[i].style.height="100%";
	     	 }
   	 }else if(w<1000){
 	     	 for(var i = 0; i < m.length; i++){
 	     		 m[i].style.width="100%";
 	     		 m[i].style.cssFloat="none"; 
 	     	     m[i].style.height="25%";	   	     	     
 	     	 }	 
   	 }  
};
   	   </script>
   </head>
   <body id="body1" style="overflow:none;" onload="loads()">
   	   <nav class="clearfix">
   	      <ul class="clearfix" id="ul1">
   	          <li class="liM"><a href="#">일정 만들기</a></li>
   	         <li class="liM"><a href="#">일정 보기</a></li>
   	         <li class="liM"><a href="/share/list.do">공유 일정</a></li>
   	         <li class="liM"><a href="#">추천 여행지</a></li>
   	         <li class="liM"><a href="#">이용 방법</a></li>
   	         <li class="liM"><a href="#">고객 센터</a></li>
   	         <li class="liM"><a id="loginform">로그인</a></li>
   	      </ul>
   	      <a id="pull" href="#">Menu</a>
   	  </nav>
   	  
   	  
   	  
   <!-- 메뉴바 END -->   	  
   	  
   	  
   <!-- 	  슬라이드 쇼  -->
   	  <div class="div1">
   	  <div class="w3-content w3-display-container" style="max-width:100%;  max-height:100%; border:none;">
  <img class="mySlides" src="../images/no.2.jpg" style="width:100%;">
  <img class="mySlides" src="../images/no.3.jpg" style="width:100%;">
  <img class="mySlides" src="../images/no.1.jpg" style="width:100%;">

  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%;">
   
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div> 
 </div>
</div> 
<!-- 슬리이드 쇼 END -->