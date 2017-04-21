<!doctype html>
<html>
<head>
	<title>Java Web Programming: 404 - Page Not Found</title>
	<meta name="description" content ="This is a JSP example that demonstrates an 404 Error response page for
page is not found in our web application.">
<%@ include file="includes/styles.jsp" %>
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>404 Sorry :[</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>		
	
	<div class="container">
		<p>This is not the page your are looking for.</p>
		<p>To continue, click the Back button.</p>
		
	</div>
<%@ include file="includes/footer.jsp" %>
  </div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>