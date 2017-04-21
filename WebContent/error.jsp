<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<title>Java Web Programming: Error</title>
	<meta name="description" content ="This is a JSP example that demonstrates an Error response page for when we encounter in our web application.">
<%@ include file="includes/styles.jsp" %>
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>Error</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>		
	
	<div class="container">
		<p>There is a major problem and possibly your computer might self-destruct in 3.2.1... Just Kidding!.</p>
		<c:choose>
			<c:when test="${message !=null}">
				<p>${message}</p>
			</c:when>
			<c:otherwise>
				<p>To continue, click the Back button.</p>
				<p><strong>Error Details</strong></p>
				<p>Type: ${pageContext.exception["class"]}</p>
				<p>Message: ${pageContext.exception.message}</p>			
			</c:otherwise>
		</c:choose>
	</div>
<%@ include file="includes/footer.jsp" %>
  </div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>