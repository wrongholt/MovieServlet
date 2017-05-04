<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<title>Java Web Programming:Movie Search</title>
	<meta name="description" content ="This is an a JSP example for a simple search page.">
	<%@ include file="includes/styles.jsp" %>
	
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>Search</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>	
	
	<div class="container">
		<form action="Search" method="post">
			<label for ="movieName"><strong>Search by the Movie name:</strong></label>
			<input name="movieName">
			<input type="submit" value="Search!">
		</form>
	</div>
<%@ include file="includes/footer.jsp" %>	
</div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>