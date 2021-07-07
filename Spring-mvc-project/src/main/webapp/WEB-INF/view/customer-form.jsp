<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head> 
<title>Customer Registration form</title>


<style>
.error{color:red}


</style>
 </head>


<body>
Fill out the form.Asterisk (*) means required
<form:form action="processForm" modelAttribute="customer">
First name <form:input path="firstName "/>
<br><br>
Last name(*) <form:input path="lastName"/>
<form:errors  path="lastName" cssClass="error"/>



<br><br>

Free passes <form:input path="freePasses"/>
<form:errors  path="lastName" cssClass="error"/>

<br><br>

Postal code : <form:input path="postalCode"/>
<form:errors  path="lastName" cssClass="error"/>

<br><br>

Course Code : <form:input path="courseCode"/>
<form:errors  path="lastName" cssClass="error"/>

<input type="submit" value="Submit"/>

</form:form> 

</body>


</html>