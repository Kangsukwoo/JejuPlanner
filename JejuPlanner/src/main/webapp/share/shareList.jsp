<%@ page contentType="text/html; charset=UTF-8" %>
<<style>
.main{ width:100%;}
.list_h_right {
    float: right;
    text-align: right;
    font-size: 14px;
    color: #808080;
    line-height: 40px;
}
.list_h_right span {
    font-weight: bold;
    color: #fe931f;
}
.box {
    display: block;
    width: 348px;
    height: 296px;
    border: 1px solid #dfdfdf;
    position: relative;
    float: left;
    margin-right: 24px;
    margin-bottom: 30px;
}

.plan_bg {
    width: 100%;
    height: 100px;
    background: linear-gradient( to bottom, rgba(0,0,0,0), rgba(0,0,0,1));
    position: absolute;
    z-index: 1;
    left: 0px;
    top: 100px;
}
.plan_bg_inner {
    padding: 15px;
    margin-top: 35px;
    font-size: 16px;
    color: white;
    line-height: 20px;
}
.tour_day {
    margin-left: 10px;
    color: #b3b3b3 !important;
    font-size: 14px;
}
.plan_img_box {
    width: 346px;
    height: 200px;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: 0;
    overflow: hidden;
}
.plan_img {
    width: 100%;
    height: 200px;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: 0;
    transition: all 3.6s;
    -webkit-transition: all 3.6s;
}
.plan_bg_inner2 {
    width: 100%;
    padding: 15px;
    position: absolute;
    top: 200px;
    font-size: 14px;
    color: #6f6f6f;
    line-height: 20px;
}
.pn_list_city {
    margin-top: 4px;
}
.pn_list_user {
    margin-top: 4px;
    padding-left: 20px;
    background: url(/res/img/mypage/plan/pn_list_user_icon.png) no-repeat 0px 2px;
}
.main {
    width: 1092px;
    margin: 0 auto;
    position: relative;
}

</style>

<div class=main>
	<div class=dva>필터영역</div>
	<div class="list_h_right">
				<span class="total_cnt">35,646</span>개의 일정
	</div>
	<div class="list" id="plan_search_list" style="min-height:300px;">
	<a href="#" target="_blank" class="box">
		<div class="plan_bg">
			<div class="plan_bg_inner">
				<span>2015-05-27</span>
				<span class="tour_day">4DAYS</span>
				<br>
				"바르셀로나 핵심 3박4일 일정!"
			</div>
		</div>
	<div class="plan_img_box">
		<img src="./img/mug_obj_144712580066621740.jpg" alt class="plan_img">
	</div>
	<div class="plan_bg_inner2">
		<span>친구와 함께</span>
		<div class="pn_list_city">바르셀로나</div>
		<div class="pn_list_user">Pro-traveler</div>
	</div>
	</a>	
	</div>
</div>

