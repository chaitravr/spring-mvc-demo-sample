<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
	<title>Customer Registration form</title>
	
	<style >
		.error(color:red)
	</style>
</head>

<body>
Fill out the form. Asterisk(*) means required
	<form:form action="processForm" modelAttribute="customer">
	
		First Name : <form:input path="firstName"/> <br></br>
		
		Last Name(*) : <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"></form:errors><br></br>
		
		<input type="submit" value="Submit"/>
		
	
	
	</form:form>
</body>
</html>