<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>일정 만들기</title>
  <script src="../js/jquery.js"></script>
  <link rel="stylesheet" href="../ajax/jquery-ui.css" />
  <link rel="stylesheet" href="../css/planmodal.css" />
<script src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=qZrDQ4AJenOI67FRY_ir&submodules=geocoder"></script>
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
  
   height:490px;
   
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
  
   
   

   .leftmain .subchild1 div:nth-child(5){
      height: 40px;
    text-align: center;
    
   }
   
   .leftmain .subchild1 div:nth-child(5) .dayplusminus{
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
    .leftmain .subchild1 div:nth-child(5) input:hover{
    cursor: pointer;
    opacity: 0.5;
    }
   .leftmain .subchild1 div:nth-child(6){

   height:45px;
   }
   .leftmain .subchild1 div:nth-child(6) .subbtn{
   margin-top:5px;
   height:40px;
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
   
   .leftmain .subchild1 div:nth-child(6) .subbtn:hover{
   opacity: 0.5;
   cursor: pointer;
   }
   
   .leftmain .subchild1 div:nth-child(7){
   height:45px;

   }
 
    .leftmain .subchild1 div:nth-child(7) .returnbtn{
   margin-top:5px;
   height:40px;
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
   
   .leftmain .subchild1 div:nth-child(7) .returnbtn:hover{
   opacity: 0.5;
   cursor: pointer;
   }
   
   .leftmain .subchild1 div:nth-child(7) input:focus{
   outline: none;
   }
    .leftmain .subchild2{
  border-right:0.5px solid black;
  width:244px;
  height:100%;
  min-width:244px;
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
     left: 0;
    background: none;
    border: none;
    height: 43px;
    top: 54px;
    position: absolute;
    border-bottom: 2px solid;

  }
  .leftmain .subchild2 .subchild2day input{
    width: 100%;
    height: 100%;
    text-align: center;
    border: none;
    background: none;
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
   
    height: 675px;
    width: 100%;
    
    
    position: absolute;
    background-color: white;
    color:black;
    display:none;
   }
    .leftmain .subchild3{
  border:1px solid black;
  width:69.5%;
  
  min-width:550px;
  height:100%;
  min-height:701px;
  float:left;
  position: absolute;
  left:476px; 
  z-index:1;
  }

  .leftmain .subchild3 div{
  float:none;
  padding:0;
  border:none;
  top:auto;
  left:auto;
  right:auto;
  bottom:auto;
  margin: 0;
  
  }
  
 
  
  .leftmain .subchild3 div:nth-child(1) div:nth-child(1) div:nth-child(1) div:nth-child(3) div:nth-child(3) div:nth-child(1) div:nth-child(1){
 border:none;
 }
  
 .leftmain .subchild3 div:nth-child(1) div:nth-child(1) div:nth-child(1) div:nth-child(3) div:nth-child(3) div:nth-child(1) div:nth-child(1) div:nth-child(1){
 border:none;
 }
 
  .leftmain .subchild3 div:nth-child(1) div:nth-child(1) div:nth-child(1) div:nth-child(3) div:nth-child(3) div:nth-child(1) div:nth-child(1) div:nth-child(1) div:nth-child(1){
 border:none;
 }
 
 
 .daychange{
    line-height: 1.8;
    position: absolute;
    width: 250px;
    height: 110px;
    margin: auto;
    border: 0.5px solid black;
    opacity: 0.9;
    z-index: 1500;
    background-color: white;
    display: none;
    border-radius: 6px;
    box-shadow: 0px 0px 2px 4px white;
    font-weight: bold;
    font-size: 15px
 }
 
 .daychange div:nth-child(1){
    width: 100%;
    height: 30%;
    background: none;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    border: none;
    text-align: left;
    padding-left:5px;
    line-height: 2;
 }
 .daychange div:nth-child(1) input{
     width: 20%;
    border: none;
    background: none;
    padding-left: 6px;
    font-weight: bold;
 }
 
 .daychange div:nth-child(2){
     width: 100%;
    height: 40%;
    background:none;
    border: none;
    line-height: 2;
    padding-left: 5px;
 }
 
 .daychange div:nth-child(2) select{
        width: 150px;
    height: 25px;
    margin-bottom: 10px;
    margin-left: 20px;
    /* padding-left: 10px; */
    font-size: 14px;
    font-weight: bold;
    color: black;
    border: none;
    border-bottom: 2px solid black;
    /* box-shadow: 1px 1px 5px grey; */
    /* border-radius: 6px; */
    /* -webkit-appearance: none; */
    -moz-appearance: none;
    appearance: none;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    margin-left: 2px;
    text-align: center;
 }
 
 .daychange div:nth-child(3){
    width: 100%;
    height: 30%;
    background:none;
    border: none;
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
    text-align: center;
 }
 .daychange div:nth-child(3) input:nth-child(1){
     border:0.5px solid black;
    background-color: white;
    font-weight: bold;
    width: 35%;
    height: 25px;
    margin-left:-2px;
    box-shadow: 0px 0px 2px 4px white;
    border-radius: 4px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
 } 
  .daychange div:nth-child(3) input:nth-child(2){
    border:0.5px solid black;
    background-color: white;
    font-weight: bold;
    width: 35%;
    height: 25px;
    margin-left:2px;
    box-shadow: 0px 0px 2px 4px white;
    border-radius: 4px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
 } 
 
 .daychange div:nth-child(3) input:hover{
  background-color: black;
  color:white;
  cursor: pointer;
  opacity: 0.8;
 }
 
 .detailform{
 position:absolute;
 margin: auto;
 width:720px;
 height:90%;
 background-color: white;
 bodrer: 1px solid black;
 z-index:1500;
 left:15%;
 border-radius: 6px;
 opacity: 0.95;
 display:none;
 }
 
 .detailform .detailheader{
 border:none;
 border-radius: 6px;
 border-bottom-left-radius:0;
 border-bottom-right-radius:0;
 margin: auto;
 margin-top:5px;
 width: 93%;
 height: 20px;
 background-color:black;
     margin-left: 27px;
 }
 
 .detailform .detailimage{
 width: 97%;
 height: 33%;
 border:none;
 margin:auto;
 margin-top:2px;
 background-color: none;
 }
 
 .detailform .detailimage div:nth-child(1){
 width:37%;
 height:90%;
 margin-top: 10px;
 background-color: none;
 border:none;
 float:left;
 margin-left:2.5%;
 
 }
  .detailform .detailimage div:nth-child(1) #imagedetail{
  width:100%;
  height:100%;
  border:none;
  opacity: 1;
  }
 .detailform .detailimage div:nth-child(2){
 width: 57%;
 height: 90%;
 margin-top: 10px;
 background:none;
 float: left;
 margin-left: 1%;
 opacity: 1;
 padding-left:5px;
 }
 
 #detailtitle{
width: 100%;
    /* height: auto; */
    border: none;
    background-color: black;
    color: white;
    font-weight: bold;
    font-size: 18px;
    text-align: center;
    height: 30px;
 }
 
  
 #detailtime{
 margin-top:5px;
 width:100%;
 height:auto;
 border:none;
 background-color:white;
 color:black;
 font-weight:bold;
 font-size:15px;
 text-align: left;
 line-height: 1.5;
 }
 
 
 .detailmain{
   width: 92.2%;
    border: 1px solid black;
    height: 50%;
    margin: auto;
 
 }
 #mainheader{
 width: 100%;
    text-align: center;
    font-weight: bold;
    background-color: black;
    border: none;
    margin: 0;
    height: 30px;
    color:white;
    font-size:20px;
    line-height: 1;
 }
 
 #maintext{
     width: 99.1%;
    height: 89%;
    border: none;
    resize: none;
    
 }
 
 .detailfooter{
     width: 92.5%;
    height: 14%;
    border: none;
    margin: auto;
    text-align: center;
    line-height: 5;
 }
 .detailfooter input:nth-child(1){
     border: none;
    background: white;
    font-weight: bold;
    font-size: 20px;
    border-radius: 6px;
    box-shadow: 0px 0px 2px 4px black;
    width: 25%;
    line-height: 1;
    height: 40%;
    margin-left: 15px;
   -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    opacity: 1;
 }
 
 .detailfooter input:nth-child(2){
     border: none;
    background: white;
    font-weight: bold;
    font-size: 20px;
    border-radius: 6px;
    box-shadow: 0px 0px 2px 4px black;
    width: 25%;
    line-height: 1;
    height: 40%;
    margin-left: 15px;
   -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    opacity: 1;
 }
 
 .detailfooter input:hover{
 cursor: pointer;
 background-color: black;
 color:white;
 box-shadow:0;
 opacity: 0.95;
 }
 .searchform{
    position: absolute;
    display: none;
    width: 600px;
    height: 650px;
    border: 1px solid black;
    z-index: 1500;
    margin: auto;
    background-color: white; 
    opacity: 0.95;
 }
 
 .searchheader{
 width:100%;
 height:50px;
 background-color: lightskyblue;
 text-align: right;
 border:none;

 
 }
 
 .searchheader input{
    margin-right: 10px;
    margin-top: 10px;
    width: 30px;
    height: 30px;
    border: 2px solid white;
    background: none;
    color: white;
    font-weight: bold;
    border-radius: 4px;
    font-size: 22px;
 
 }
 
 .searchtext{
     border: none;
    height: 55px;
    margin-top: 10px;
    text-align: center;
    line-height: 3;
 }
 
 .searchtext input{
     background: url(./icon/search-icon-png-18.png) no-repeat;
    background-size: 25px;
    width: 300px;
    height: 25px;
    background-position: 280px;
    border: none;
    box-shadow: 0px 0px 4px 2px grey;
    padding-left: 10px;
 }
 
 .searchoption{
 width:100%;
 height:50px;
 text-align: center;
 }
 .searchoption label{
 margin-left:30px;
 }
 .searchoption label:nth-last-child(1){
 margin-left:30px;
 margin-right: 30px;
 }
 .colimage{ 
 box-shadow: 0px 0px 1px 1px gray;
     -webkit-transition-duration: 0.1s; /* Safari */
    transition-duration: 0.1s;
 }
 .colimage:hover{ 
 cursor: pointer;
 }
 .searchoption input[type=radio]{
 display:none;
 }
 
 .searchmain{
width: 95%;
    margin-left: 2.5%;
    height: 460px;
    border: 1px solid #bbc;
    margin-top: 10px;
 
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
<input type="button" value="${daystart }" id="btn1">
</div>
<div class="1stBox" id="1stBox"> <!-- 1st Box(3) --> 
<div class="daydiv1" id="daydiv1"> <!-- 일정 시작(3-1)  -->
<input type="button" value="day 1" id="001">
</div>
</div>
<div style="width:100%; height:70px; text-align: center; ">

<select style="width:90%; height:30px; text-align: center;" id="changeitem">
<option value="1">
관광지
</option>
<option value="2">
맛집
</option>
<option value="3">
숙박
</option>
<option value="4">
기타
</option>
</select>
<input type="button" value="검색" style="width:90%; height:30px; text-align: center; margin-top:5px;" id="searchitem">
</div> 
<div> <!-- (4)  -->
<input type="button" id="plusday" value="일정 추가" class="dayplusminus">
<input type="button" id="minusday" value="일정 삭제" class="dayplusminus" > 
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
<input type="text" value="${plansub}" name="plansub" id="plansub">
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
<input type="text" readonly="readonly" id="daystart" placeholder="여행 출발 날짜" value="${daystart }">
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
<div class="plancontent">
<textarea rows="" cols="" name="plancontent">${plancontent }</textarea>

</div>
<div class="clear">
<input type="button" value="완료">
</div>
</div> <!-- 모달창 등 장  -->
</div> <!-- z-index 다른곳 선택 불가 -->




</form>

<div class="daychange" id="daychange">
<div><!-- daychange nth-child(1) -->
<a>기존 날짜 :</a>
<input type="text" readonly="readonly" value="" id="changeprev">
</div> 
<div><!-- daychange nth-child(2) -->
<a>변경 일자 :</a>
<select id="changeselect">
</select>
</div> 
<div><!-- daychange nth-child(3) -->
<input type="button" value="변경" id="change">
<input type="button" value="취소" id="changeclose">
</div> 
</div>

<!-- 상세보기 -->
<div class="detailform" id="detailform"> 
<div class="detailheader"></div> <!-- detailform header -->
<div class="detailimage">

<div>
<img id="imagedetail"  src=""> 
</div>

<div>
<input type="text" readonly="readonly" value="" id="detailtitle">
<input type="text" readonly="readonly" id="detailtime">

</div>
</div> 
<div class="detailmain">
<input type="text" id="mainheader" value="본문">
<textarea rows="" cols="" id="maintext" readonly="readonly"></textarea>
</div>
<div class="detailfooter">
<input type="button" value="일정 추가" id="" onclick="Plusplan(this.id)" >
<input type="button" value="취소" id="" >
</div>
</div>

<div class="searchform" id="searchform">
<div class="searchheader">
<input type="button" value="X" id="searchclose">
</div>
<div class="searchtext">
<input type="text" placeholder="장소 검색" id="searchcnt" >
</div>
<div class="searchoption">
<label for="search1">
<input type="radio" value="search1" id="search1" name="searchcoll">
<img src="icon/travel2.png" style="width:50px; height:50px;" class="colimage">
</label>
<label for="search2">
<input type="radio" value="search2" id="search2" name="searchcoll">
<img src="icon/home3.png" style="width:50px; height:50px;" class="colimage">
</label>
<label for="search3">
<input type="radio" value="search3" id="search3" name="searchcoll">
<img src="icon/food.png" style="width:50px; height:50px;" class="colimage"> 
</label>
<label for="search4">
<input type="radio" value="search4" id="search4" name="searchcoll">
<img src="icon/guitar.png" style="width:50px; height:50px;" class="colimage">
</label>
</div>
<div class="searchmain" id="searchmain">
<div id="searchitem0" style="width:95%;height:25%;overflow-y:hidden;border: 1px solid black;margin-left: 2.5%;margin-top: 10px;">
<div id="searchitemleft0" style="width:30%; height:100%; ">
<img src='' style="width: 100%;height: 100%;border: none;">
</div>
<div id="searchitemright0" style="width: 70%;height:100%;border:none;float:  left;">

</div>
</div>
</div>
</div>
</body>

 
   <%--  <td>${dto.contentid }</td>
    <td><a href="./read.do?noticeno=${dto.contentid }">${dto.title }</a></td>
    <td>${dto.addr2 }</td>
    <td>${dto.mapx }</td>
    <td>${dto.mapy }</td>
    <td>${dto.contenttypeid }</td>
    <td>${dto.modifiedtime }</td> --%>


<script>

var list = [ ];
var imagelist = [
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg",
	"../food/jeju1.jpg",
	"../food/jeju2.jpg",
	"../food/jeju3.jpg",
	"../food/jeju4.jpg"
	
]
var title = [];
var opentime = [
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00"
	
]

var closetime = [
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00",
	"10:00",
	"11:00",
	"10:00",
	"12:00"
]
</script>
<%-- <c:forEach var="dto" items="${list }"> --%>
<script>
$(document).ready(function () {
/* title.push("{dto.title}");
list.push("new naver.maps.LatLng(${dto.mapy}, ${dto.mapx})"); */

})
</script>
<%-- </c:forEach> --%>

<script>
var count = 0;
var num = 0;
/* 네이버 지도  */
var mapOptions = {
	    center: new naver.maps.LatLng(33.506077, 126.493421),
	    zoom: 8,
	    
	    minZoom:4
	};

	var map = new naver.maps.Map('planmaps', mapOptions);
/* 네이버 지도  */
	
	
/* 전체화면 크기 조정 */
$(document).ready(function() {
	var sub1=$(window).height();
    $(".subchild3").css("height",sub1);
    $(".subchild2").css("height",sub1);
	$(".subchild1").css("height",sub1); 
 
 
	var young = "${young}";
	var student = "${student}";
	var old = "${old}";
	var planItem = "${planItem}";
	
    var Itemcss = $("#sel"+planItem).attr("id");
	var labels = $("#sel"+planItem).parents("div").children("label");

    for(var i=0; i<labels.length; i++){
		labels.eq(i).css("background-color","white");
    	labels.eq(i).css("color","black");
    	
    	if(labels.eq(i).attr("for")==Itemcss){
    		labels.eq(i).css("background-color","black");
        	labels.eq(i).css("color","white");
    	}
    }
    
    $("#young").children("option[value='"+young+"']").attr("selected","selected");
    $("#student").children("option[value='"+student+"']").attr("selected","selected");
    $("#old").children("option[value='"+old+"']").attr("selected","selected");
});

$(window).resize(function () {
	
	var sub1=$(window).height();
	   $(".subchild3").css("height",sub1);
	    $(".subchild2").css("height",sub1);
		$(".subchild1").css("height",sub1); 
})
/* 전체 화면 조정 end  */

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

/* 모달창 달력  */

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
  
});
$("#daystart").change(function () {
	$("#btn1").val(""+$("#daystart").val());
})
/* 모달창 달력 END */

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
		var daymain = "<div id='daymain"+(fidlength+1)+"' style='overflow:hidden'></div>";
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

/* 네이버 지도 마커  */






var markerList = [];
var markers = [];
var infoWindows = [];
for(var i=0; i<list.length; i++){
	
	marker = new naver.maps.Marker({
		 position: list[i],
		 map: map,
		 title:i,
         icon: {
			 url: '../images/sp_pins_spot_v3.png',
	            size: new naver.maps.Size(24, 37),
	            anchor: new naver.maps.Point(12, 37),
	            origin: new naver.maps.Point(i * 29, 0)
			
	},
         zIndex: 1
	});
    var contentdiv = '<div id="cntdiv'+i+'" class="cntdiv" style="position: absolute;">';
        contentdiv +='<div style="border:none; width:100%; height:5%; background-color:black"></div>';
        contentdiv +='<div style="background-color:white; width:100%; height:75%; border:none;">';
        contentdiv +='<img src="'+imagelist[i]+'" style="width:123px; height:130px; border:none; float:left;  margin-left:2px; margin-top:2px; border-radius:4px; border-top-right-radius:0 ">';
        contentdiv +='<div style="float:left; height:133px; width:73px; border:none;">';
        contentdiv +='<input type="text" readonly="readonly" value="'+title[i]+'" style="width:100%; font-size:11px; color:white; font-weight:bold; text-align:center; height: 20px; border:none; background-color:black;">';
        contentdiv +='<input type="text" readonly="readonly" value="영업 시간" style="width:100%; font-size:13px; color:black; font-weight:bold; text-align:center; height: 20px; background:none; border:none; margin-top:5px;">';
        contentdiv +='<input type="text" readonly="readonly" value="'+opentime[i]+'~'+closetime[i]+'" style="width:100%; font-size:10px; color:black; font-weight:bold; text-align:center; height: 20px; background:none; border:none;">';
        contentdiv +='</div></div>';
        contentdiv +='<div style="background:none;    border-bottom-left-radius: 4px; border-bottom-right-radius: 4px; width:100%; height:20%; border:none;">';
        contentdiv +='<input type="button" class="cntbtn" name="Pcntbtn" id="Pcntbtn'+[i]+'" onclick="Plusplan(this.id)" value="일정추가 " style="margin-left:2px; width:97px; height:80%; margin-top:4px; background-color:white; border-radius:4px; border:0.5px solid black; font-weight:bold; ">';
        contentdiv +='<input type="button" class="cntbtn" name="Dcntbtn" id="Dcntbtn'+[i]+'" onclick="detailplan(this.id)" value="상세보기" style="margin-left:2px; width:97px; height:80%; margin-top:4px; background-color:white; border-radius:4px; border:0.5px solid black; font-weight:bold; ">';
        contentdiv +='</div></div>';
        var infoWindow = new naver.maps.InfoWindow({
        content: contentdiv
    });
	
	marker.set('seq', i);
	markers.push(marker);
	markerList.push(marker)
	infoWindows.push(infoWindow);
	
    icon = null;
/*     marker = null */
}





function getClickHandler(seq) {
    return function(e) {
    	
            var marker = markers[seq],
            infoWindow = infoWindows[seq];

        if (infoWindow.getMap()) {
            infoWindow.close();
        } else {
            
        	infoWindow.open(map, marker);
        	$("#cntdiv"+seq).parents("div").parents("div").css("border","none");
        	/* $("#cntdiv0").parents("div").css("position","absolute");
        	$("#cntdiv0").parents("div").css("margin-top","200px;"); */
  
        
        	$("#cntdiv"+seq).parents("div").next("div").css("display","none");
        	$("#cntdiv"+seq).parents("div").next("div").next("div").css("display","none");
        	$(".cntdiv").css("position","absolute");
        	$(".cntdiv").css("background-color","white");
        	$(".cntdiv").css("border","1px solid black");
        	/* $(".cntdiv").css("padding-left","10px");
         	$(".cntdiv").css("padding-top","5px"); */
        	$(".cntdiv").css("margin-top","-130px");
        	$(".cntdiv").css("margin-left","500px");
        	$(".cntdiv").css("width","200px"); 
        	$(".cntdiv").css("height","180px");
        	$(".cntdiv").css("opacity","0.95"); 
        	$(".cntdiv").css("border-radius","6px"); 
        	$(".cntdiv").css("box-shadow","0px 0px 2px 3px black");
        	
        	 infoWindow.close();
        	 infoWindow.open(map, marker);
        	
        	 num = seq;
        }  
        
    }
}

for (var i=0, ii=markers.length; i<ii; i++) {
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
} 

/* 네이버 지도 END */

$(document).on("hover",".cntbtn",function(event){
	$(".cntbtn").css("-webkit-transition-duration","0.4s");
	$(".cntbtn").css("transition-duration","0.4s");
	$(".cntbtn").css("cursor","pointer");
	
	$("#"+$(this).attr("id")).css("background","black");
	$("#"+$(this).attr("id")).css("color","white");
	
	});


$(document).on("mouseout",".cntbtn",function(event){
	
	$("#"+$(this).attr("id")).css("background","white");
	$("#"+$(this).attr("id")).css("color","black");
	});	


function Plusplan(id) {
	
	var bid = id.substring(7,id.length);
	var day = $("#dayid").val();
    day = day.substring(0,1);
    var count = $("#daymain"+day).children("div").length;

    	$("#daymain"+day).append(function () {
    		 plandiv = '<div class="plandiv" id="plandiv'+(count+1)+'" style="margin-left:2px; width:98%;height:10%;display:block;float:left;border:none;border-radius:0;margin-top:5px;position: relative;padding-bottom: 5px;border-bottom: 1.5px solid black;"">';
    		    plandiv += '<img src="'+imagelist[bid]+'" style="width: 40%;height: 98%;border: 2px solid black;float:left;border-radius: 4px;border-bottom-right-radius:  0;">';
    		    plandiv += '<div style="width:58%;height:100%;border:none;display:block;float:left; position:relative; line-height:0.8;">';
    		    plandiv += '<input type="text" value="영업 시간" readonly="readonly" style="height: 15%;width:70%;border:none;font-weight:bold;font-size:10px;margin-left:2px;">';
    		    plandiv += '<input type="text" value="'+opentime[bid]+'~'+closetime[bid]+'" readonly="readonly" style="height: 10%;width:100%;border:none;font-weight: bold;font-size:11px;margin-left:2px;">';
    		    plandiv += '<input type="text" value="본문" readonly="readonly" style="width:100%;height: 32%;border: none;margin-left:2px;">';
    		    plandiv += '<input type="button" value="날짜 변경" style="height: 30%;width: 45%;margin-left: 8px;font-size: 11px;border-radius:  4px;border: none;background-color: wheat;font-weight:  bold;">';
    		    plandiv += '<input type="button" value="일정 취소" style="height: 30%;width: 45%;margin-left: 3px;font-size: 11px;border-radius: 4px;border: none;background-color:  wheat;font-weight: bold;">'; 
    		    plandiv += '<input type="hidden" value="'+bid+'">';
    		    plandiv += '</div></div>';
    		
            return plandiv;
    	});
    	if($("#daymain"+day).children("div").length>8){
    		$("#daymain"+day).css("overflow-y","scroll");
    	}
    	
}



$(document).on("hover","input[value='날짜 변경']",function (){
	$(this).css("-webkit-transition-duration","0.4s");
	$(this).css("transition-duration","0.4s");
	$(this).css("opacity","0.6");
	$(this).css("cursor","pointer");
})

$(document).on("mouseout","input[value='날짜 변경']",function (event){
	$(this).css("opacity","1");
})
$(document).on("hover","input[value='일정 취소']",function (event){
	$(this).css("-webkit-transition-duration","0.4s");
	$(this).css("transition-duration","0.4s");
	$(this).css("opacity","0.6");
	$(this).css("cursor","pointer");
})
$(document).on("mouseout","input[value='일정 취소']",function (evnet){
	$(this).css("opacity","1");
})

$(document).on("click","input[value='일정 취소']",function (event){
	var day = $("#dayid").val();
    day = day.substring(0,1);
	$("#"+$(this).parents("div").parents("div").attr("id")).remove();
	if($("#daymain"+day).children("div").length<9){
		$("#daymain"+day).css("overflow-y","hidden");
	}
})

$(document).on("click","input[value='날짜 변경']",function(event){
	var day = $("#dayid").val();
    day = day.substring(0,1);
    var fidlength = $("#1stBox").children("div").length;
    if(fidlength==1){
    	alert("변경할 날짜가 없습니다.")
    }else{
	var plandaybody = $(".plandaybody");
	plandaybody.fadeIn("1500");
	$("#daychange").fadeIn("1000");	
	$("#changeprev").val(day+"일차");
	$("#daychange").append("<input type='hidden' value='"+$(this).parents("div").parents("div").attr("id")+"'>");
	for(var i=1; i<=fidlength;i++){
    if(i==day){
    	
    }else{
    	/*  if(day==1&&i==2){
    		$("#changeselect").append("<option selected value='"+i+"'>"+i+"일차</option>");
    	}
    	else if(day!=1&&i==1){
    		$("#changeselect").append("<option selected value='"+i+"'>"+i+"일차</option>");
    	}else{
    		$("#changeselect").append("<option value='"+i+"'>"+i+"일차</option>");
    	}  */
    	$("#changeselect").append("<option name='selectday' value='"+i+"'>"+i+"일차</option>"); 
    }		
	
   }/* for end  */
  }/* else end  */
})/* function end  */


$("#change").click(function () {
	var name = $("#daychange").find("input[type='hidden']").val();
	var day = $("#changeselect").val();
	var bid = $("#"+name).find("input[type='hidden']").val();
	var count = $("#daymain"+day).children("div").length;
	$("#"+name).remove();
	$("#daymain"+day).append(function () {
		 plandiv = '<div id="plandiv'+(count+1)+'" style="margin-left:2px; width:98%;height:10%;display:block;float:left;border:none;border-radius:0;margin-top:5px;position: relative;padding-bottom: 5px;border-bottom: 1.5px solid black;"">';
		    plandiv += '<img src="'+imagelist[bid]+'" style="width: 40%;height: 98%;border: 2px solid black;float:left;border-radius: 4px;border-bottom-right-radius:  0;">';
		    plandiv += '<div style="width:58%;height:100%;border:none;display:block;float:left; position:relative; line-height:0.8;">';
		    plandiv += '<input type="text" value="영업 시간" readonly="readonly" style="height: 15%;width:70%;border:none;font-weight:bold;font-size:10px;margin-left:2px;">';
		    plandiv += '<input type="text" value="'+opentime[bid]+'~'+closetime[bid]+'" readonly="readonly" style="height: 10%;width:100%;border:none;font-weight: bold;font-size:11px;margin-left:2px;">';
		    plandiv += '<input type="text" value="본문" readonly="readonly" style="width:100%;height: 32%;border: none;margin-left:2px;">';
		    plandiv += '<input type="button" value="날짜 변경" style="height: 30%;width: 45%;margin-left: 8px;font-size: 11px;border-radius:  4px;border: none;background-color: wheat;font-weight:  bold;">';
		    plandiv += '<input type="button" value="일정 취소" style="height: 30%;width: 45%;margin-left: 3px;font-size: 11px;border-radius: 4px;border: none;background-color:  wheat;font-weight: bold;">'; 
		    plandiv += '<input type="hidden" value="'+bid+'">';
		    plandiv += '</div></div>';
		
       return plandiv;
	});
	
	var plandaybody = $(".plandaybody");
	plandaybody.fadeOut("1500");
	$("#daychange").fadeOut("1000");
	var fidlength = $("#1stBox").children("div").length;
	$("#daychange").find("input[type='hidden']").remove();
	for(i=1;i<=fidlength;i++){
		$("option[value='"+i+"']").remove();
		
	}
})

$("#changeclose").click(function () {
	var plandaybody = $(".plandaybody");
	plandaybody.fadeOut("1500");
	$("#daychange").fadeOut("1000");
	var fidlength = $("#1stBox").children("div").length;
	$("#daychange").find("input[type='hidden']").remove();
	for(i=1;i<=fidlength;i++){
		$("option[value='"+i+"']").remove();
		
	}
	
})
$("#detailform").click(function () {
	var plandaybody = $(".plandaybody");
	plandaybody.fadeOut("1500");
	$("#detailform").fadeOut("1500");
})

function detailplan(id) {
	var bid = id.substring(7,id.length);
	var plandaybody = $(".plandaybody");
	plandaybody.fadeIn("1500");
	$("#detailform").fadeIn("1500");
	$("#imagedetail").attr("src",imagelist[bid]);
	$("#detailtitle").val(title[bid]);
	$("#detailtime").val("영업시간 : " + opentime[bid]+"~"+closetime[bid]);
	$(".detailfooter").find("input[value='일정 추가']").attr("id",id);
}

$(document).on("click",".plandiv",function(event){
 var bid = $(this).find("input[type='hidden']").val();
 var location = list[bid];
 var marker = markers[bid],
 infoWindow = infoWindows[bid];
 map.setCenter(location);
 infoWindow.open(map, marker);
 infoWindow.close();
 infoWindow.open(map, marker);
})
$(document).on("mouseover",".plandiv",function(event){
 var bid = $(this).find("input[type='hidden']").val();
 $(this).css("cursor","pointer");
 $(this).css("opacity","0.8");
 $(this).find("input[type='text']").css("cursor","pointer");
})
$(document).on("mouseout",".plandiv",function(event){
 $(this).css("opacity","1");
})

$(document).on("change","#changeitem",function(){
	
	for(var i=0; i<list.length; i++) {
		 infoWindow = infoWindows[i];
		 infoWindow.close();
		markers[i].setMap(null);
	} 
	
})

$("#searchitem").click(function () {
	var plandaybody = $(".plandaybody");
	plandaybody.fadeIn("1500");
	$("#searchform").fadeIn("1200");
	
})

$("#searchclose").click(function () {
	var plandaybody = $(".plandaybody");
	plandaybody.fadeOut("1500");
	$("#searchform").fadeOut("1200");
	
	
})

$(".colimage").click(function () {
	
	var length=$(this).parents("div").find("img[class='colimage']").length;
	for(var i=0; i<length; i++){
		$(this).parents("div").find("img[class='colimage']").eq(i).css("box-shadow","0px 0px 1px 1px gray");	
	}
	$(this).css("box-shadow","0px 0px 1px 1px lightskyblue");
	
})

$("input:radio[name='searchcoll']").click(function () {

    if($("#searchcnt").val()==""||$("#searchcnt").val()==null){
    	$("#searchmain").children("div").remove();
    	
    }
	
})

/* $("li.fade").hover(function(){$(this).fadeOut(100);$(this).fadeIn(500);}); 
 */
</script>
<style>

</style>
</html>