 <%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
 <div class="div5">
   <br/>
   <p>Copyright ⓒ 2018 JAVA0927.com, All Rights Reserved.</p>
   
   </div>
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

function idCheck(){

	var sx=parseInt(screen.width);
	var sy=parseInt(screen.height);
	
	var x=(sx/2)+50;
	var y=(sy/2)-25;
	
	var win=window.open("./Login/LoginForm.jsp","idwin","width=400,height=400");
	
	win.moveTo(x, y);
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

$("#loginform").click(function () {
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
</script>
</html>