<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>일정 만들기</title>
  <script src="../js/jquery.js"></script>
  <link rel="stylesheet" href="../ajax/jquery-ui.css" />
  <link rel="stylesheet" href="../css/planmodal.css" />
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c86f4a1cbd016e9b853f27abab04f183"></script>  
<script src="../ajax/jquery.min.js"></script>
<script src="../ajax/jquery-ui.min.js"></script>
  <style>
  input:focus{
  outline: none;
  }
  textarea:focus{
  outline: none;
  }
  select:focus{
  outline: none;
  }
  body{
  height:650px;
  }
  div{
  top:0;
  bottom:0;
  left:0;
  right:0;
  width:100%;
  height: auto;
  }
  
  .leftmain .subchild1{
  border:none; 
  width:232px;
  height:100%;
  float:left;
  left:0;
  min-width:232px;
  position: absolute;
  text-align: left;
  z-index:1;
  }
  
  .leftmain .subchild1 div:nth-child(1){
  line-height:3;
  font-size: 18px;
  font-weight: bold; 
  width:100%;
  height:54px;
  color:white;
  text-align: center;
  background-color:black;
  border:none;
  opacity: 0.8;
  }
  /* .leftmain .subchild1 div:nth-child(2){
  border:none;
  line-height:2.5;
  font-size: 18px;
  font-weight: bold;
  width:100%;
  height:5%;
  text-align: center;
  opacity:0.8;
  color:white;
  background-color:black;
  left:0;
  display:none;
  }  */
  

  
   .leftmain .subchild1 div:nth-child(2){
  border:none;
  width:100%;
  height:45px;
  background-color:black;
  left:0;
  text-align: center;
  opacity: 0.8;
  line-height: 2.5;
  }
  
   .leftmain .subchild1 div:nth-child(2) input{
   width:90%;
   height:31.5px;
   color:black;
   font-size:18px;
   font-weight:bold;
   text-align:center;
   border:none;
   background-color: white;
   -webkit-transition-duration: 0.5s; /* Safari */
    transition-duration: 0.5s;
   border-radius: 8px;
   }
   
   .leftmain .subchild1 div:nth-child(2) input:hover{
   
   background-color:black;
   color:white;
   cursor: pointer;
   }
   
   .leftmain .subchild1 div:nth-child(2) input:focus{
   outline: none;
   
   }
   
   .leftmain .subchild1 div:nth-child(3){
  
   height:537px;
   
   }
   .leftmain .subchild1 div:nth-child(3) div{
   height:54px;
   background-color:white;
   color:black;
   border:none;
 
   width: 99%;
   left:0;
   text-align: center;
   line-height: 2.7;
   }
   
   .leftmain .subchild1 div:nth-child(3) div input{
   width:90%;
   height:80%;
   border-radius: 6px;
   border:2px solid black;
   font-weight: bold;
   font-size: 16px;
   text-align: center;
   background-color: white;
      -webkit-transition-duration: 0.5s; /* Safari */
    transition-duration: 0.5s;
   }
   
     .leftmain .subchild1 div:nth-child(3) div input:hover{
     cursor: pointer;
  background-color:black;
  color:white;
   
   }
   
   .leftmain .subchild1 div:nth-child(3) div:nth-child(1) input:focus{
   outline: none;
   }
  
   
   

   .leftmain .subchild1 div:nth-child(4){
      height: 40px;
    text-align: center;
   }
   
   .leftmain .subchild1 div:nth-child(4) .dayplusminus{
   height: 30px;
    margin-top: 5px;
    width: 85px;
   border:none;
   font-weight:bold;
   background-color: black;
   box-shadow: 2px 2px 5px grey;
   border-radius: 6px;
   -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
   opacity: 0.8;
   color:white;
   }
    .leftmain .subchild1 div:nth-child(4) input:hover{
    cursor: pointer;
    opacity: 0.5;
    }
   .leftmain .subchild1 div:nth-child(5){

   height:58px;
   }
   .leftmain .subchild1 div:nth-child(5) .subbtn{
   margin-top:5px;
   height:50px;
   color:white;
   font-size:18px;
   font-weight:bold;
   text-align:center;
   width:100%;

   background-color: black;
   box-shadow: 1px 1px 5px grey;
   border-radius: 6px;
   -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
   opacity: 0.8;
   }
   
   .leftmain .subchild1 div:nth-child(5) .subbtn:hover{
   opacity: 0.5;
   cursor: pointer;
   }
   
   .leftmain .subchild1 div:nth-child(6){
   height:60px;

   }
 
    .leftmain .subchild1 div:nth-child(6) .returnbtn{
   margin-top:5px;
   height:50px;
   color:white;
   font-size:18px;
   font-weight:bold;
   text-align:center;
   width:100%;

   background-color: black;
   box-shadow: 1px 1px 5px grey;
   border-radius: 6px;
   -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
   opacity: 0.8;
   }
   
   .leftmain .subchild1 div:nth-child(6) .returnbtn:hover{
   opacity: 0.5;
   cursor: pointer;
   }
   
   .leftmain .subchild1 div:nth-child(6) input:focus{
   outline: none;
   }
    .leftmain .subchild2{
  border-right:0.5px solid black;
  width:232px;
  height:100%;
  min-width:232px;
  float:left;
  left:232px;
  position: absolute;
  z-index:1;
  }
  
  .leftmain .subchild2 .subchild2sub{
  height:54px;
  line-height:1;
  background-color:black;
  border:none;
  left:0;
  opacity: 0.8;
  width:100%;
  font-size: 18px; 
  font-weight: bold;
  color:white;
  text-align: center;
  float: none;
  position: absolute;
  }
  
  .leftmain .subchild2 .subchild2day{
  left:0;
  background-color:white;
  border:none;
  height:45px;   
  top: 54px;
  position: absolute;
  }
  .leftmain .subchild2 .subchild2day input{
  width:100%;
  height:100%;
  text-align: center;
  border:none;
  font-weight: bold;
  opacity: 0.8;
  font-size: 18px;
  
  }
  
   .leftmain .subchild2 div:nth-child(2) input:focus{
   outline: none;
   
   }
   
   .leftmain .subchild2 .daymain{
    left: 0;
    width:100%;
    margin-top: 105px;
    height:675px;
    border:none;
    position: absolute;
   }
 .leftmain .subchild2 .daymain div{
    left: 0;
    top: 0;
    margin-left: auto;
    margin-right: auto;
    height: 675px;
    width: 91%;
    border: 4px solid black;
    border-radius: 6px;
    position: absolute;
    background-color: white;
    color:black;
    display:none;
   }
    .leftmain .subchild3{
  border:1px solid black;
  width:70%;
  
  min-width:550px;
  height:100%;
  min-height:701px;
  float:left;
  position: absolute;
  left:464px; 
  z-index:1;
  }
  
  
  
 
  </style>
</head>
<body>
<form>
<div class="leftmain"> <!-- main -->

<div class="subchild1"> <!-- sub child 1 -->

<div class="subchilddaysub"> <!-- child 1 day title (1)-->
<span>여행 출발 날짜</span>
</div>

 
 <div class="subchilddaybtn"> <!-- child 1 여행일정 수정 버튼(2) -->
<input type="button" value="2018-03-08" id="btn1">
</div>
<div class="1stBox" id="1stBox"> <!-- 1st Box(3) --> 
<div class="daydiv1" id="daydiv1"> <!-- 일정 시작(3-1)  -->
<input type="button" value="day 1" id="001">
</div>
</div>

<div> <!-- (4)  -->
<input type="button" id="plusday" value="일정 추가" class="dayplusminus">
<input type="button" id="minusday" value="일정 삭제" class="dayplusminus"> 
</div>
<div>  <!-- (5) -->
<input type="submit" id="submit" onclick="" class="subbtn"  value="완료">
</div> <!-- (6) -->
<div class="endBox"> <!-- 취소    --> 
<input type="button" id="back" onclick="javascript:history.back()" class="returnbtn" value="취소">
</div>
</div><!-- sub child 1 end -->
<div class="subchild2">
<div class="subchild2sub"><!-- start  .leftmain .div-nth:child(2) div-nth:child(1) --> 
<p>여행 일정표</p>
</div>

<div class="subchild2day"> <!-- .leftmain .div-nth:child(2) div-nth:child(2) -->
<input type="text" id="dayid" value="1일차" readonly="readonly">
</div>
<div id="daymain" class="daymain"><!-- .leftmain .div-nth:child(2) div-nth:child(3) -->
<div id="daymain1" style="display:block">
1번
</div>

</div>
</div> <!-- sub child 2 --> 
<div class="subchild3" id="planmaps"></div> <!-- sub child3 Map --> 

</div>

<div class="plandaybody"> <!-- 여행 계획 변경 Modal -->
<div class="planday">
<div>
<input type="button" value="X" id="planclose">
</div> <!-- plan button -->
<div> 
<a> 여행 제목 </a>
<input type="text">
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
<input type="text" readonly="readonly" id="daystart" placeholder="여행 출발 날짜">
<span>~</span>
<input type="text" readonly="readonly" id="dayend" placeholder="여행 복귀 날짜">


</div><!-- 여행 날짜  -->
<div class="planpeople">
<span>여행 인원</span>
<select id="old">
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

<select id="student">
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
<select id="young">
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
<div class="plancontent">
<textarea rows="" cols=""></textarea>

</div>
<div class="clear">
<input type="button" value="완료">
</div>
</div> <!-- 모달창 등 장  -->
</div> <!-- z-index 다른곳 선택 불가 -->


</form>
</body>

<script>
var mapContainer = document.getElementById('planmaps'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(33.506077, 126.493421), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
};


var map = new daum.maps.Map(mapContainer, mapOption); 




function setCenter() {            
// 이동할 위도 경도 위치를 생성합니다 
var moveLatLon = new daum.maps.LatLng(33.506077, 126.493421);

// 지도 중심을 이동 시킵니다
map.setCenter(moveLatLon);
}

function panTo() {
// 이동할 위도 경도 위치를 생성합니다 
var moveLatLon = new daum.maps.LatLng(33.450580, 126.574942);

// 지도 중심을 부드럽게 이동시킵니다
// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
map.panTo(moveLatLon);            
}    

var positions = [
{
    content: '<div>1번위치</div>', 
    latlng: new daum.maps.LatLng(33.5130953887, 126.5140597738 )
},
{
    content: '<div>2번위치</div>', 
    latlng: new daum.maps.LatLng(33.2470053246, 126.5120659485)
},
{
    content: '<div>3번위치</div>', 
    latlng: new daum.maps.LatLng(33.5531902583, 126.8171103076)
},
{
    content: '<div>4번위치</div>',
    latlng: new daum.maps.LatLng(33.3688327012, 126.6340415164)
}
];



function setDraggable(draggable) {
    // 마우스 드래그로 지도 이동 가능여부를 설정합니다
    map.setDraggable(draggable);    
}

$(document).ready(function() {
	var sub1=$(window).height();
    $(".subchild3").css("height","794px");
    $(".subchild2").css("height","794px");
	$(".subchild1").css("height","794px");

	setDraggable(true);
	});

$(window).resize(function () {
	
	var sub1=$(window).height();
	   $(".subchild3").css("height","794px");
	    $(".subchild2").css("height","794px");
		$(".subchild1").css("height","794px");
})

$("#btn1").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");

	plandaybody.fadeIn("1500");
	planday.fadeIn("1200");
})
	
$("#planclose").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");
	
	plandaybody.fadeOut("1500");
	planday.fadeOut("1200");
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
  });
  
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
	    
	  });
});

$("#plusday").click(function () {

	var fid = $("#1stBox").children("div").children("input").attr("id");
	var fidlength = $("#1stBox").children("div").length;
	var top = 54;
	
	
	if(fidlength<9){
	$("#1stBox").append(function () {
		var daydiv = "<div id='daydiv"+(fidlength+1)+"'><input type='button' value='day "+ (fidlength+1)+"' id='00"+(fidlength+1)+"'></div>";
        return daydiv;
	});
	$("#daymain").append(function () {
		var daymain = "<div id='daymain"+(fidlength+1)+"'>"+(fidlength+1)+"번</div>"
		return daymain;
	})
	}
})

$("#minusday").click(function () {

	var fidlength = $("#1stBox").children("div").length;
	
	if(fidlength>1){
		$("#daydiv"+fidlength).remove();
		$("#daymain"+fidlength).remove();
		fidlength = $("#1stBox").children("div").length;
		var nid = $("#dayid").val();
		nid = nid.substring(0,1);
		
		if(nid>=fidlength){
		$("#dayid").val((fidlength)+"일차");
		$("#daymain"+(fidlength)).fadeIn("0");
		}
	}
	
})

$(document).on("click",".leftmain .subchild1 div:nth-child(3) div input",function(event){
 var nid = event.target.id;
 /* alert($("#dayid").val()); */
 nid = nid.substring((nid.length-1),nid.length)
 $("#dayid").val(nid+"일차"); 
 var main = $("#daymain").children();
 var mainday = $("#daymain"+nid);
 main.hide();
 mainday.fadeIn("0");
})



</script>
</html>