<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="css/Login.css"/>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="ajax/jquery-ui.css" />
  <link rel="stylesheet" href="css/planmodal.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="ajax/jquery.min.js"></script>
<script src="ajax/jquery-ui.min.js"></script>
   	   

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

#loginform:hover{
cursor: pointer;
}

.Logintable{}
.Loginbody{}
</style>
  
   	   <script>
   	      $(function(){
   	      	var pull=$('#pull');
   	      	    menu=$('#ul1');
   	      	    height=$(".div2");
   	     var x = document.getElementsByClassName("div1");   
   	     var m = document.getElementsByClassName("div3");
   	     var mimg = $(".imgselect");
   	     var mtext = $(".textselect");
   	     var li = document.getElementsByClassName("liM");
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
		     		mimg.css("display","block");
		     		mtext.css("display","none");
		     		height.css("height",mimg.css("width"));
		     		  
		     	 }
		    	
		     
		     	
		     	 
	     	 }else if(w<1000){
	   	     	 for(var i = 0; i < m.length; i++){
	   	     		 m[i].style.width="100%";
	   	     		 m[i].style.cssFloat="none"; 
	   	     	     m[i].style.height="25%";	
	   	     	     mimg.css("display","none");
		     		mtext.css("display","block");
		     		height.css("height","300px");
	   	     	 }	 
	   	 	
		     	
	     	 }
   	      });
   	  });
   	      
   	     
   	      
   	   function loads(){
   		var m = document.getElementsByClassName("div3");
   	   var mimg = $(".imgselect");
 	     var mtext = $(".textselect");
	      	var w=$(window).width();
	      	if(w>700){
	        
	        document.getElementById("body1").style.overflow = "none";
	      	}else{document.getElementById("body1").style.overflow = "none";}   
	      	
	 if(w>1000){
	      	
	     	 for(var i = 0; i < m.length; i++){
	     		m[i].style.width="25%";
	     		m[i].style.cssFloat="left";
	     		m[i].style.height="100%";
	     		mimg.css("display","block");
	     		mtext.css("display","none");
	     		height.css("height",mimg.css("width"));
	  
	     		
	     	 }
   	 }else if(w<1000){
 	     	 for(var i = 0; i < m.length; i++){
 	     		 m[i].style.width="100%";
 	     		 m[i].style.cssFloat="none"; 
 	     	     m[i].style.height="25%";	
 	     	   mimg.css("display","none");
	     		mtext.css("display","block");
	     		height.css("height","300px");
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
   	         <li class="liM"><a href="./share/list.do">공유 일정</a></li>
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
  <img class="mySlides" src="images/no.2.jpg" style="width:100%; opacity: 0.82">
  <img class="mySlides" src="images/no.3.jpg" style="width:100%;">
  <img class="mySlides" src="images/no.1.jpg" style="width:100%;">

  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%;">
    <div class="planbtn" id="btn2">
    <p>일정 만들기</p>
    </div>
     <div class="loginbtn" id="btn1">
    <p>Login</p>
    </div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div> 
 </div>
</div> 
<!-- 슬리이드 쇼 END -->


  
   
   
<!--    <ul>
   <li>항목 1</li>
   <li>항목 2</li>
   <li>항목 3</li>
   <li>항목 4</li>
   </ul> -->
   <!-- <table>
  
   <tr style="width: 100%; height: 100%;">
   <td>항목 1</td>
   <td>항목 2</td>
   <td>항목 3</td>
   <td>항목 4</td>
   </tr>
  
   </table> -->
   
   <div class="div2">
   <div class="div3">
      <img src="images/solo2.jpg" class="imgselect">
      <input type="text" readonly="readonly" value="혼자 여행" class="textselect">
   </div>
   
   <div class="div3">
       <img src="images/solo2.jpg" class="imgselect">
       <input type="text" readonly="readonly" value="혼자 여행" class="textselect">
   </div>
   
   <div class="div3">
       <img src="images/solo2.jpg" class="imgselect">
       <input type="text" readonly="readonly" value="혼자 여행" class="textselect">
   </div>
   
   <div class="div3">
       <img src="images/solo2.jpg" class="imgselect">
       <input type="text" readonly="readonly" value="혼자 여행"  class="textselect">
   </div>
   
   </div>
   <!-- 3단 end -->
   
   <div class="div4">
   
   
   </div>
   
   <div class="div5">
   <br/>
   <p>Copyright ⓒ 2018 JAVA0927.com, All Rights Reserved.</p>
   
   </div>
   
<div class="plandaybody"> <!-- 여행 계획 변경 Modal -->
<form action="plan/planmain.do" method="post">
<div class="planday">

<div>
<input type="button" value="X" id="planclose">
</div> <!-- plan button -->
<div> 
<a> 여행 제목 </a>
<input type="text" name="plansub">
</div> <!-- 일정 제목 -->
<div class="Itemdiv"> 
<a> 여행 분류 </a>

<label for="sel1" style="margin-left:20px;">
<input type="radio" id="sel1" value="1" name="planItem"/>
<span>가족 여행</span>
</label>
<label for="sel2">
<input type="radio" id="sel2" value="2" name="planItem"  />
<span>커플 여행</span>
</label>
<label for="sel3">
<input type="radio" id="sel3" value="3" name="planItem"/>
<span>친구들과 여행</span>
</label>
<label for="sel4" class="lastlabel">
<input type="radio" id="sel4" value="4" name="planItem" />
<span>나홀로 여행</span>
</label>


</div> <!-- 일정 분류 -->
<div class="plancalendar">
<span>여행 날짜</span>
<input type="text" readonly="readonly" id="daystart" name="daystart" placeholder="여행 출발 날짜">
</div><!-- 여행 날짜  -->
<div class="planpeople">
<span>여행 인원</span>
<select id="old" name="old">
<option value="O0">어른 0명</option>
<option value="O1">어른 1명</option>
<option value="O2">어른 2명</option>
<option value="O3">어른 3명</option>
<option value="O4">어른 4명</option>
<option value="O5">어른 5명</option>
<option value="O6">어른 6명</option>
<option value="O7">어른 7명</option>
<option value="O8">어른 8명</option>
<option value="O9">어른 9명</option>
</select>

<select id="student" name="student">
<option value="S0">청소년 0명</option>
<option value="S1">청소년 1명</option>
<option value="S2">청소년 2명</option>
<option value="S3">청소년 3명</option>
<option value="S4">청소년 4명</option>
<option value="S5">청소년 5명</option>
<option value="S6">청소년 6명</option>
<option value="S7">청소년 7명</option>
<option value="S8">청소년 8명</option>
<option value="S9">청소년 9명</option>
</select>
<select id="young" name="young">
<option value="Y0">소아 0명</option>
<option value="Y1">소아 1명</option>
<option value="Y2">소아 2명</option>
<option value="Y3">소아 3명</option>
<option value="Y4">소아 4명</option>
<option value="Y5">소아 5명</option>
<option value="Y6">소아 6명</option>
<option value="Y7">소아 7명</option>
<option value="Y8">소아 8명</option>
<option value="Y9">소아 9명</option>
</select>
</div>
<div class="planconsub">
<span> 설명 </span>
</div>
<div class="plancontent" >
<textarea rows="" cols="" name="plancontent" id="plancontent"></textarea>

</div>
<div class="clear">
<input type="submit" value="완료">
</div>

</div> <!-- 모달창 등 장  -->
</form>
</div> <!-- z-index 다른곳 선택 불가 -->

<form>
<div class="loginbody"> <!-- 로그인 모달창  -->
<table class="logintable">
<tr>
<td class="loginclose"><input type="button" id="loginclose" class="closeform" value="X"></td>
</tr>
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
</form>
   </body>
<script>
var slideIndex = 1;
showDivs(slideIndex);
var next=0;
setInterval(function () {
	  

	  showDivs(slideIndex += 1);
	 
	}, 2500);


function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}


$("#btn2").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");

	plandaybody.fadeIn("1500");
	planday.fadeIn("1200");
})


$("#btn1").click(function () {
	var Logintable = $(".logintable");
	var Loginbody = $(".loginbody");
   
	Loginbody.fadeIn("1500");
	Logintable.fadeIn("1200");	
})

$("#planclose").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");
	
	plandaybody.fadeOut("1500");
	planday.fadeOut("1200");
})
$("#loginclose").click(function () {
	var Logintable = $(".logintable");
	var Loginbody = $(".loginbody");
   
	Loginbody.fadeOut("1500");
	Logintable.fadeOut("1200");	
})


$("#loginform").click(function () {
	var Logintable = $(".logintable");
	var Loginbody = $(".loginbody");
   
	Loginbody.fadeIn("1500");
	Logintable.fadeIn("1200");	
})

$("label").click(function () {
	$("input[name=planItem]:checked").each(function() {
        var Itemcss = $(this).attr("id");
        /* alert($(this).parents("label").attr("for")); */
		var labels = $(this).parents("div").children("label");

        for(var i=0; i<labels.length; i++){
    		labels.eq(i).css("background-color","white");
        	labels.eq(i).css("color","black");
        	
        	if(labels.eq(i).attr("for")==Itemcss){
        		labels.eq(i).css("background-color","black");
            	labels.eq(i).css("color","white");
        	}
        }
	});
})



$(function() {
  $( "#daystart" ).datepicker({
    dateFormat: 'yy.mm.dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    showMonthAfterYear: true,
    changeMonth: false,
    changeYear: false,
    yearSuffix: '년'
  })
  
  $( "#dayend" ).datepicker({
	    dateFormat: 'yy.mm.dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    dayNames: ['일','월','화','수','목','금','토'],
	    dayNamesShort: ['일','월','화','수','목','금','토'],
	    dayNamesMin: ['일','월','화','수','목','금','토'],
	    showMonthAfterYear: true,
	    changeMonth: false,
	    changeYear: false,
	    yearSuffix: '년',
	    
	  })
})
/* var content = "";
$(document).on("keypress","#plancontent",function(){
	 content = $("#plancontent").val();
	 
	 $("#plancontent").attr("value",content);
}) */


</script>
</html>