<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="title">상품등록결과</div>
<table border="1">
<tr>
  <th>상품번호</th>
  <th>제목</th>
  <th>주소2</th>
  <th>위도</th>
  <th>경도</th>
  <th>타입</th>
  <th>수정일</th>
  <th>이미지</th>
</tr>

<c:forEach var="dto" items="${apidto }">
  <tr>
    <td>${dto.contentid }</td>
    <td><a href="./read.do?noticeno=${dto.contentid }">${dto.title }</a></td>
    <td>${dto.addr2 }</td>
    <td>${dto.mapx }</td>
    <td>${dto.mapy }</td>
    <td>${dto.contenttypeid }</td>
    <td>${dto.modifiedtime }</td>
    <td>${dto.image }</td>
  </tr>   
</c:forEach>
</table>
