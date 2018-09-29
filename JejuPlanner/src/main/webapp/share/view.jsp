<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../header.jsp"></jsp:include>
<!DOCTYPE html>

<html lang="ko">
<script src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=qZrDQ4AJenOI67FRY_ir&submodules=geocoder"></script>
<script>

$(document).ready(function () {
	var length = $(".dayselect").children("div").length;  
   $(".dayselect").children("div").css("width",(100/length)+"%");
})

</script>
<style>
input:hover{
cursor: default;
}

.div2{
border:1px solid black;
}

.div2 .daysub{
width:100%;
height:50%;
border:none;
background-color: white;
}

#detailsub{
    border: none;
    background: none;
    width: 100%;
    height: auto;
    text-align: center;
    font-weight: bold;
    font-size: 35px;
    margin-top: 10px;
    text-shadow: 0px 0px 3px;
}

#detailday{
    width: 100%;
    height: auto;
    text-align: right;
    border: none;
    margin-top: 20px;
    font-size: 14px;
    font-weight: 550;
    /* margin-left: -20px; */
    padding-right: 20px;
    color: navy;
    text-shadow: 0px 1px 12px cyan;
}

#detailfloor{
width: 100%;
    height: auto;
    text-align: right;
    padding-right: 20px;
    font-size: 13px;
    font-weight: bold;
    color: orangered;
    text-shadow: 0px 0px 5px orange;
    border: none;
}

.div2 .dayselect{
width:100%;
height:25%;
border:none;
background-color: white;
}

.div2 .menuselect{
width:100%;
height:25%;
border:none;
background-color: white;
}

.dayselect div{
    float: left;
    height: 75px;
    border: 1px solid black;
    margin: auto;
    text-align: center;
    font-weight: bold;
    font-size: 22px;
    line-height: 3;
    text-shadow: 0px 0px 4px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
}

.dayselect #day1{
    float: left;
    height: 75px;
    border: 1px solid black;
    margin: auto;
    text-align: center;
    font-weight: bold;
    font-size: 22px;
    line-height: 3;
    text-shadow: 0px 0px 4px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    background-color: black;
    color:white;
}


.div4 div:nth-child(1){

display:block;
}



</style>
   <div class="div2">
   <div class="daysub">
   <input type="text" value="힐링을 위한 제주도 여행" id="detailsub" readonly="readonly">
   <input type="text" value="7일 | 18. 03. 19(월) ~ 18. 03. 27(월)" id="detailday" readonly="readonly">
   <input type="text" value="가족 여행" id="detailfloor" readonly="readonly">
   </div>
   <div class="menuselect">
   </div>
   <div class="dayselect"><!--  -->
   <div id="day1">day 1<!-- 1day -->   
   </div>
   <div id="day2">day 2<!--  -->
   </div>
   <div id="day3">day 3<!--  -->
   </div>
   <div id="day4">day 4<!--  -->
   </div>
   <div id="day5">day 5<!--  -->
   </div>
   <div id="day6">day 6<!--  -->
   </div>
   <div id="day7">day 7<!--  -->
   </div>
   </div> 
  </div>
  
   <!-- 3단 end -->
   
   <div class="div4">
   <div id="daymain1" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:block;">   
   <div style="margin: 0;float:left;width: 65%;height: 100%;border:none;z-index: 0;position: relative;">
   ${detail.sha_sub } <br>
   ${detail.sha_content }
   </div>
   <div style="float: left; width: 35%;height: 100%;border:none;background: none; position: relative;display:block;margin: 0;">
   <div style="width:400px; height:400px; margin-left:10px; margin-top:10px; padding:0;" id="detailmap1" >
   </div>
   </div>
   </div> <!-- daymain  -->
   <div id="daymain2" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">2일차</div>
   <div id="daymain3" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">3일차</div>
   <div id="daymain4" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">4일차</div>
   <div id="daymain5" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">5일차</div>
   <div id="daymain6" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">6일차</div>
   <div id="daymain7" style="position: absolute;height: 100%;width: 1200px;padding: 0;display:none;">7일차</div>
   </div>

   <script>
   
   

		
   $(document).on("click",".dayselect div",function(event){
	
	   
	   var id = event.target.id;
	   var length = $(this).parents("div").children("div").length;
	   for(var i=0; i<length; i++){
		   $("#day"+i).css("background","white");
		   $("#day"+i).css("color","black");
		   $("#daymain"+i).css("display","none");
		   if(("day"+i)==id){
		   $("#day"+i).css("background","black");
		   $("#day"+i).css("color","white");
		   $("#daymain"+i).css("display","block");
		   }else{
			   $("#day"+i).css("background","white")
			   $("#day"+i).css("color","black");
			   $("#daymain"+i).css("display","none");
		   }
	   }
	  
   })

   $(document).on("hover",".dayselect div",function(event){
	 $(this).css("cursor","pointer"); 
   })
var mapOptions = {
	    center: new naver.maps.LatLng(33.506077, 126.493421),
	    zoom: 8
	  
	};
var map = new naver.maps.Map('detailmap1', mapOptions);
  
   </script>

 <%@include file="../footer.jsp"%> 