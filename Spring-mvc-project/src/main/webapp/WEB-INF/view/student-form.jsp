<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE>
<html>

<head>

<title>Registration form</title>
</head>




<body>


<form:from action="processForm" modelAttribute="student">



First name <form:input path="firstName"/>

<br><br>

Last name <form:input path="lastName"/>

<br><br>

Country:

<form:select path="country" >


<form options items="${student.countryOptions }" label="Brazil"/>


</form:select>

Favorite language

Java <form:radiobutton path="favoriteLanguage" value="java"/>
C# <form:radiobutton path="favoriteLanguage" value="C"/>
Php <form:radiobutton path="favoriteLanguage" value="Php"/>
Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>


<br><br>


Operating Systems

Linux <form: checkbox path="OperatingSystems" value="Linux"/>
Mac <form: checkbox path="OperatingSystems" value="Mac"/>
Windows <form: checkbox path="OperatingSystems" value="Windows "/>





<br><br>

<input type="submit" value="submit">






</form:from>



</body>



</html>