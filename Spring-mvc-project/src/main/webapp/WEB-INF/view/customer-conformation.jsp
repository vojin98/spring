<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head> 
<title>Customer Conformation </title>




 </head>


<body>


the customer is confirmed:  ${customer.firstName } ${customer.lastName}

<br><br>

Free passes :    ${customer.freePasses }


Postal Code :    ${customer.postalCode }

Course Code :     ${customer.courseCode }


</body>


</html>