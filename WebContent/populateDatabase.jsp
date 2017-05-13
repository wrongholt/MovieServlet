<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<title>Java Web Programming: Populate Database</title>
	<meta name="description" content ="This is an a JSP example for a simple form that we can submit to populate the database.">
	<%@ include file="includes/styles.jsp" %>
	
</head>
<body>
	<div class="container">
		<div class="hero-unit">
		<h1>Populate Database</h1>
		</div>
<%@ include file="includes/navigation.jsp" %>	
	
	<div class="container">
		<form action="PopulateDatabase" method="post">
			<p>Click on the populate button to populate the person database.</p>
			<p>Warning: Submitting this form will reset the database and it will only contain those people in the original spreadsheet.</p>
			<input type="submit" value="Populate!">
		</form>
	</div>
<%@ include file="includes/footer.jsp" %>	
</div>
<%@ include file="includes/scripts.jsp" %>
</body>
</html>