<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<title>Java Web Programming: Movie List</title>
	<meta name="description" content ="This is an a JSP example that demonstrates how to output every person in our Excel spreadsheet
	to a web page.">
<%@ include file="includes/styles.jsp" %>
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>Welcome to Java Web Programming</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>	
	
	<div class="container">
		<c:choose>
			<c:when test="${empty movies}">
				<p>Sorry, the list of movies is empty.</p>
			</c:when>
			<c:otherwise>
				<c:forEach var="movie" items="${movies}">
					<div class="span4">
					<h2>${movie.title}</h2>
					<p>${movie.title} that was directed by ${movie.directorName} is ${movie.lengthInMinutes} minutes long.</p>
					<br>
					<img src ="${movie.picture}">
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
<%@ include file="includes/footer.jsp" %>	
</div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>