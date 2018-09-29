<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>공유일정</title>

    <!-- Bootstrap core CSS -->
     <link href="../bootstrap/css/bootstrap.css" rel="stylesheet"> 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="../css/sharePage.css" rel="stylesheet">
	<link href="../css/paging.css" rel="stylesheet" >
  </head>

  <body>


    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">
        <small>여행자들의 일정보기</small>
      </h1>

      <div class="row">
           
   	  	<c:forEach var="list" items="${page }">
	      	<div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
	            <div class="card-body">
	              <h4 class="card-title">
	                <a href="/main/share/view?sha_num=${list.sha_num }"></a>
	              </h4>
	              <p class="card-text">
	              ${list.sha_num } <br>
	              ${list.sha_date } <br>
	              ${list.sha_viewcount } <br>
	              ${list.sha_recommend } <br>
	              ${list.plan_sub } <br>
	              </p>
	            </div>
	          </div>
	        </div>      
        </c:forEach>
        
      </div>
      <!-- /.row -->

      <!-- Pagination -->
      <!-- 페이징  -->
		<c:choose>
		<c:when test="${paging.numberOfRecords ne NULL and paging.numberOfRecords ne '' and paging.numberOfRecords ne 0}">	<!-- test="조건"  -->
		<div class="text-center marg-top">
			<ul class="pagination">
				<c:if test="${paging.currentPageNo gt 5}">  											  <!-- 현재 페이지가 5보다 크다면(즉, 6페이지 이상이라면) -->
					<li><a href="javascript:goPage(${paging.prevPageNo}, ${paging.maxPost})">이전</a></li> <!-- 이전페이지 표시 -->
				</c:if>
				<!-- 다른 페이지를 클릭하였을 시, 그 페이지의 내용 및 하단의 페이징 버튼을 생성하는 조건문-->
					<c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1"> <!-- 변수선언 (var="i"), 조건식, 증감식 -->
		            <c:choose>
		                <c:when test="${i eq paging.currentPageNo}"> 
		                      <li class="active"><a href="javascript:goPage(${i}, ${paging.maxPost})">${i}</a></li> <!-- 1페이지부터 10개씩 뽑아내고, 1,2,3페이지순으로 나타내라-->
		                </c:when>
		                	<c:otherwise>
		                    <li><a href="javascript:goPage(${i}, ${paging.maxPost})">${i}</a></li> 
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- begin에 의해서 변수 i는 1이기 때문에, 처음에는 c:when이 수행된다. 그 후 페이징의 숫자 2를 클릭하면 ${i}는 2로변하고, 현재는 ${i}는 1이므로 otherwise를 수행한다
					         그래서 otherwise에 있는 함수를 수행하여 2페이지의 게시물이 나타나고, 반복문 실행으로 다시 forEach를 수행한다. 이제는 i도 2이고, currentPageNo도 2이기 때문에
					     active에 의해서 페이징부분의 2에 대해서만 파란색으로 나타난다. 그리고 나머지 1,3,4,5,이전,다음을 표시하기위해 다시 c:otherwise를 수행하여 페이징도 나타나게한다.-->
				<!-- // 다른 페이지를 클릭하였을 시, 그 페이지의 내용 및 하단의 페이징 버튼을 생성하는 조건문-->
										
				<!-- 소수점 제거 =>-->
				<fmt:parseNumber var="currentPage" integerOnly="true" value="${(paging.currentPageNo-1)/5}"/> 
				<fmt:parseNumber var="finalPage" integerOnly="true" value="${(paging.finalPageNo-1)/5}"/> 
					
				<c:if test="${currentPage < finalPage}"> <!-- 현재 페이지가 마지막 페이지보다 작으면 '다음'을 표시한다. -->
					<li><a href="javascript:goPage(${paging.nextPageNo}, ${paging.maxPost})">다음</a></li>
				</c:if> 
			</ul>
		</div>
		</c:when>
		</c:choose>            

    </div>
    <!-- /.container -->
	
	
  	<script>
	function goPage(pages, lines) {
	    location.href = '?' + "pages=" + pages;
	}
	</script>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
      
</html>
<%@ include file="../footer.jsp" %>