<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>

</head>


<body>
	<form:form action="processForm" modelAttribute="student">
		
		First name : <form:input path="firstName"/>
		
		<br></br>
		
		Last name : <form:input path="lastName"/>
		
		<br></br>
		
		Country :
		<%-- <form:select path="country">
			<form:option value="Brazil" label="Brazil"/>
			<form:option value="France" label="France"/>
			<form:option value="Germany" label="Germany"/>
			<form:option value="India" label="India"/>
		</form:select> --%>
		
		<form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		
		<br></br>
		
		Favorite Language :
		Java<form:radiobutton path="favouriteLanguage" value="java"/>
		C#<form:radiobutton path="favouriteLanguage" value="C#"/>
		PHP<form:radiobutton path="favouriteLanguage" value="PHP"/>
		Ruby<form:radiobutton path="favouriteLanguage" value="Ruby"/>
		JavaScript<form:radiobutton path="favouriteLanguage" value="JavaScript"/>
		
		<br></br>
		
		Operating Systems :
		Linux <form:checkbox path="operatingSystems" value="linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
		Windows<form:checkbox path="operatingSystems" value="windows"/>
		
		<br></br>
		
		<input type="submit" value="Submit"/>
	</form:form>

</body>
</html>