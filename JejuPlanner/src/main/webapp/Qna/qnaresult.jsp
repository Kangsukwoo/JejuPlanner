<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp" %>
<meta charset="UTF-8"> 
<title>qnaresult.jsp</title> 
<link href="../css/style.css" rel="stylesheet" type="text/css">
<DIV class="title">알림</DIV>
<DIV class="content" align="center">
	<dl>
		<dd>${msg1!=null ? img : "" } ${msg1 }</dd>
		<dd>${msg2!=null ? img : "" } ${msg2 }</dd>
		<dd>${msg3!=null ? img : "" } ${msg3 }</dd>
		<dd>${msg4!=null ? img : "" } ${msg4 }</dd>
		<dd>${msg5!=null ? img : "" } ${msg5 }</dd>
	</dl>	
	<p>
	  ${link1 }
	  ${link2 }
	  ${link3 }
	  ${link4 }
	  ${link5 }
	</p>
</DIV>
</html>
<%@ include file="../footer.jsp" %>