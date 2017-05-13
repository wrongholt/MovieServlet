<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<title>Java Web Programming: Add Movie</title>
	<meta name="description" content ="This is an a JSP example that demonstrates how to use a form to add a new Movie to our Database.">
<%@ include file="includes/styles.jsp" %>
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>Add Movie</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>	
	
	<div class="container">
		<form action ="AddMovie" method="post">
			<label for=title><strong>Title:</strong> </label>
			<input name="title">
			<br>
			<label for="directorName"><strong>Director Name:</strong> </label>
			<input name="directorName">
			<br>
			<label for="minutes"><strong>Length in Minutes:</strong> </label>
			<input name="minutes">
			<br>
			<input type="submit" value="Add Movie">
		</form>
	</div>
<%@ include file="includes/footer.jsp" %>	
</div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>