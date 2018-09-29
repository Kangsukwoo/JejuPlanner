<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<!-- 시작 -->
	<meta charset="UTF-8">
	<title>고객센터</title>
<style>
.css3-tab {
  list-style: none;
  margin: 0 auto 40px;
  padding: 38px 0 0 0;
  position: relative;
  width: 90%;
}
.css3-tab input[type='radio'] {
  display: none;
}
.css3-tab .css3-tab-nav {
  display: table;
  table-layout: fixed;
  width: 100%;
}
.css3-tab .css3-tab-nav label {
  display: table-cell;
  background-color: white;
  color: #000000;
  padding: 15px;
  text-align: center;
  transition: all .3s ease 0s;
}
.css3-tab .css3-tab-nav label:hover {
  cursor: pointer;
  background: white;
  color: #666666;
  transition: all .3s ease 0s;
}
@media (max-width: 692px) {
  .css3-tab .css3-tab-nav {
    display: block;
    margin: 0 0 20px;
  }
  .css3-tab .css3-tab-nav label {
    display: block;
    box-sizing: border-box;
    width: 100%;
    padding: 20px;
  }
}
.css3-tab .css3-tab-content {
  overflow: hidden;
  padding: 25px;
  display: none;
  background: #FFF;
  clear: left;
  box-sizing: border-box;
}
.css3-tab input[id='tabOne']:checked ~ .css3-tab-nav label[for='tabOne'] {
  background: #FFFFFF;
  color: #666666;
  cursor: default;
}
.css3-tab input[id='tabOne']:checked ~ div.tab-one {
  display: block;
  border-top: solid 3px #b6ff00;
}
.css3-tab input[id='tabTwo']:checked ~ .css3-tab-nav label[for='tabTwo'] {
  background: #FFFFFF;
  color: black;
  cursor: default;
}
.css3-tab input[id='tabTwo']:checked ~ div.tab-two {
  display: block;
  border-top: solid 3px red;
}
.css3-tab input[id='addNew']:checked ~ .css3-tab-nav label[for='addNew'] {
  background: #FFFFFF;
  color: black;
  cursor: default;
}
.css3-tab input[id='addNew']:checked ~ div.add-new {
  display: block;
  border-top: solid 3px red;
}
body {
  background: #e4e4e4;
}

/* Style the tab ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ이용 안내*/ 
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #FFFFFF;
    width: 30%;
    height: 50%;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: white;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    border-left: none;
    height: 50%;
}

/* wrapper ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자주묻는 질문*/
.wrapper {
  max-width: 70ch;
  padding-right: 10px;
  padding-left: 10px;
  margin-right: auto;
  margin-left: auto;
}

/* tabs */
.tabs {
  border-right: 1px solid #ccc;
}
.tabs:after {
  content: "";
  display: table;
  clear: both;
}
.tabs input[type=radio] {
  display: none;
}
.tabs label {
  display: block;
  float: left;
  width: 33.33333%;
  padding: 1em;
  border: 1px solid #ccc;
  border-right: none;
  background-color: #f7f7f7;
  text-align: center;
  font-weight: 700;
  color: black;
  cursor: pointer;
  -webkit-transition: background-color 150ms ease-in-out;
  transition: background-color 150ms ease-in-out;
}
.tabs label:hover {
  background-color: white;
}
.tabs [id^="tab"]:checked + label {
  border-bottom-color: white;
  background: white;
  color: #333;
}

.tab-content {
  display: none;
  float: left;
  width: 100%;
  padding: 1em;
  border-bottom: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background-color: white;
}

#tab1:checked ~ #tab-content1,
#tab2:checked ~ #tab-content2,
#tab3:checked ~ #tab-content3, 
#tab4:checked ~ #tab-content4,
#tab5:checked ~ #tab-content5,
#tab6:checked ~ #tab-content6,
#tab7:checked ~ #tab-content7,
#tab8:checked ~ #tab-content8{
  display: block;
}

.other-content {
  color: white;
}

@media only screen and (max-width: 768px) {
  body, html {
    font-size: 18px;
  }
}
@media only screen and (max-width: 645px) {
  .tabs label {
    float: none;
    width: 100%;
  }
}
@media only screen and (max-width: 480px) {
  body, html {
    font-size: 16px;
  }
}

</style>

<!-- Pure CSS Menu -->
<div class='css3-tab'>
		<input type='radio' name='a' id='tabOne' tabindex="1" checked>
		<input type='radio' name='a' id='tabTwo' tabindex="2">
		<input type='radio' name='a' id='addNew' tabindex="3">

		<div class="css3-tab-nav">
				<label for='tabOne'>이용안내</label>
				<label for='tabTwo'>자주 묻는 질문</label>
				<label for='addNew'>1:1 문의</label>
		</div>

		<div class='css3-tab-content tab-one'>
		<div class="tab">
		  <button class="tablinks" onclick="openQna(event, 'Start')" id="defaultOpen">시작하기</button>
		  <button class="tablinks" onclick="openQna(event, 'Create')">일정 만들기</button>
		  <button class="tablinks" onclick="openQna(event, 'Select')">일정 선택</button>
		  <button class="tablinks" onclick="openQna(event, 'Output')">출력하기</button>
		  <button class="tablinks" onclick="openQna(event, 'Share')">공유하기</button>
		</div>

			<div id="Start" class="tabcontent">
			  <h3>시작하기</h3>
			  <p>시작하세요.</p>
			</div>
			
			<div id="Create" class="tabcontent">
			  <h3>일정 만들기</h3>
			  <p>일정 만드세요.</p> 
			</div>
			
			<div id="Select" class="tabcontent">
			  <h3>일정 선택</h3>
			  <p>일정 선택하세요.</p>
			</div>
			
			<div id="Output" class="tabcontent">
			  <h3>출력하기</h3>
			  <p>출력하세요.</p>
			</div>
			
			<div id="Share" class="tabcontent">
			  <h3>공유하기</h3>
			  <p>공유하세요.</p>
			</div>
		</div>

		<div class='css3-tab-content tab-two'>
		<div class="wrapper">
			<h1>자주 묻는 질문</h1>
			<div class="tabs cf">
				<input type="radio" name="tabs" id="tab1" checked>
				<label for="tab1">
		        클립이란 무엇인가요?
		      </label>
				<input type="radio" name="tabs" id="tab2">
				<label for="tab2">
		        다른 언어로 어스토리를 이용할 수 있나요?
		      </label>
				<input type="radio" name="tabs" id="tab3">
				<label for="tab3">
		        통화 설정을 바꿀 수 있나요?
		      </label>
		
				<input type="radio" name="tabs" id="tab4">
				<label for="tab4">
		        내 시설(장소/식당)을 어스토리에 등록하려면 어떻게 하나요?
		      </label>
		
				<input type="radio" name="tabs" id="tab5">
				<label for="tab5">
		        도시별 리스트에서 잘못된 장소 정보를 어떻게 수정하나요?
		      </label>
		
				<input type="radio" name="tabs" id="tab6">
				<label for="tab6">
		        어스토리에서 찾은 명소/식당/호텔 등 해당 시설에 연락해 줄 수 있나요?
		      </label>
				<input type="radio" name="tabs" id="tab7">
				<label for="tab7">
		        어스토리 서비스에 오류가 있습니다. 어디로 연락하나요?
		      </label>
				<input type="radio" name="tabs" id="tab8">
				<label for="tab8">
		        호텔에 대한 리뷰도 쓸 수 있나요?
		      </label>
		
				<div id="tab-content1" class="tab-content">
				책을 읽다가 클립으로 중요한 부분에 표시해 두듯이, 어스토리에서는 '클립'을 누르면 해당 장소를 '클립한 장소'나 귀하의 '클립보드'에서 편리하게 확인할 수 있습니다.
				가고 싶은 장소나 예약할 호텔, '클립'할 수 있습니다. 클립한 장소들로 일정을 만들면 여행이 더욱 편리해 집니다!
				</div>
				<div id="tab-content2" class="tab-content">
				어스토리는 다국어 서비스를 지원하고 있습니다. 현재, 영어, 한국어, 일본어의 3개 언어로 사이트를 이용하실 수 있습니다. 언어설정은 화면 우측 상단의 검색창 옆 드롭박스를 통해 변경할 수 있습니다.
				</div>
				<div id="tab-content3" class="tab-content">
					네, 화면 우측 상단의 언어설정과 함께 통화, 거리 단위를 선택하실 수 있습니다. 귀하에게 익숙한 통화를 선택하여 이용하기 바랍니다.
				</div>
				<div id="tab-content4" class="tab-content">
					시설의 관리자는 해당 도시의 신규 '장소추가'와 '등록요청'을 통해 관광명소나, 투어, 식당, 카페 등을 어스토리에 등록하실 수 있습니다. 
					등록된 장소는 그 도시의 명소/음식/쇼핑 등 해당 리스트에 노출됩니다. 
					하지만 호텔이나 숙박업체는 어스토리에 등록하실 수 없으며 호텔 예약 사이트에 문의하시기 바랍니다.
				</div>
				<div id="tab-content5" class="tab-content">
					어스토리 장소에서(명소/음식/쇼핑) 잘못된 정보가 있거나 누락된 정보를 발견하셨다면 '정보 수정 & 업데이트' 버튼을 클릭하여 정보 수정을 요청해 주세요. 어스토리와 다른 여행자들에게 크나큰 도움이 됩니다. 
					여행자들과 함께 만들어가는 어스토리 입니다. 장소가 폐업 또는 이전했거나 잘못된 정보가 있는 경우 꼭 '정보 수정 & 업데이트'를 요청해 주시면 감사하겠습니다.
				</div>
				<div id="tab-content6" class="tab-content">
					어스토리는 해당 시설에 관한 여행정보를 제공하지만 예약, 취소, 결제, 변경 등에 관한 아무런 권한이 없음으로 해당 예약 사이트나 시설에 직접 문의하시기 바랍니다. 
					어스토리에서 각 명소의 스팟 상세 정보를 보시면 홈페이지나 전화번호를 확인하실 수 있습니다.
				</div>
				<div id="tab-content7" class="tab-content">
					어스토리는 익스플로러8 이하의 버전에서는 브라우저에 따라 서비스 화면 및 일부기능에 오류가 발생할 수 있습니다. 최신 브라우저로 업데이트 하시면 보다 쾌적한 서비스 이용이 가능합니다.
					만약 최신 브라우저를 사용하고 있음에도 기타 어스토리 서비스에 관한 오류사항이나 기술적인 문제 등 불편사항이 있을 경우 '문의하기' 에 관련 내용을 남겨 주시길 부탁 드립니다. 
					빠른 시간내에 해당 사항을 확인 후 답변드리겠습니다.	우리는 사용자들의 피드백을 환영하며 더 나은 서비스 제공을 위해 노력하고 있습니다. 
					서비스에 관한 문의 사항은 'FAQ'에서 검색해 보시기 바라며 찾는 내용이 없는 경우 '문의하기'를 통해 문의해 주시기 바랍니다. 어스토리 서비스가 아닌, 링크된 제3자의 사이트에 관한 오류나 문제는 해당 사이트에 직접 문의해 주시기 바랍니다.
				</div>
				<div id="tab-content8" class="tab-content">
					호텔 관련 리뷰는 어스토리에서 작성하실 수 없습니다. 해당 여행사 사이트나 호텔/항공사 사이트에 접속하여 작성하시기 바랍니다. 
					어스토리 안에서는 여행지의 장소 - 관광명소, 식당, 쇼핑 - 에만 리뷰를 작성하실 수 있습니다.
				</div>
			</div>	
			</div>
		</div>

		<div class='css3-tab-content add-new'>
			<form name="nse"
	      			  align="center"
	      			  method="post"
	      			  action="./qna.do">
			<div>
			<div>
				<B>ID</B>
				<div><input type="text" name="id" size="88"></div>
			</div>
			<div>
				<B>비밀번호</B>
				<div><input type="password" name="passwd" size="88" ></div>
			</div>
			<div>
				<B>제목</B>
				<div><input type="text" name="subject" size="88"></div>
			<div>
				<B>문의 유형</B>
					<div>
						<select name="val" id="val">
							<option value="">선택하세요.</option>
							<option value="가입 / 탈퇴" >가입 / 탈퇴</option>
							<option value="홈페이지 이용관련">홈페이지 이용관련</option>
							<option value="기타">기타</option>
						</select>
					</div>
			</div>
				<div>
					<B>내용</B>
					<div>
						<textarea rows="15" cols=88 name="ir1"></textarea>
					</div>
				</div>
			</div>
		<input type="submit" value="전송">
		<input type="reset" value="취소">
		<div align="center"></div>
		</div>
	</form>
		</div>
</div>
<!-- 끝 -->

<script>
function openQna(evt, qnaName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(qnaName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<%@ include file="../footer.jsp" %>