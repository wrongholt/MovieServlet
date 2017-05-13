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
	
	<div class="row">
		<form action="Search" method="post">
			<div class="col-md-6">
			<label for ="title" id="titleLabel"><strong>Search by the Movie name:</strong></label>
			<input name="title" id="titleInput">
			<input type="submit" value="Search!" id="searchTitle">
			</div>
			<div class="col-md-6">
			<label for ="directorName" id="directorLabel"><strong>Search by the Director name:</strong></label>
			<input name="directorName" id="directorInput">
			<input type="submit" value="Search!" id="serachDirector">
			</div>
		</form>
	</div>
<%@ include file="includes/footer.jsp" %>	
</div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>