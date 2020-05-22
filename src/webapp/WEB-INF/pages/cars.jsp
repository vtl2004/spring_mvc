<%--
  Created by IntelliJ IDEA.
  User: krvro
  Date: 22.05.2020
  Time: 20:55
  To change this template use File | Settings | File Templates.

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<title>Cars</title>
<body>
<spring:message code="welcome.text"/>
<a  href="?lang=en">Englich</a>|
<a  href="?lang=ru">Russian</a>
<c:forEach var="msq" items="${messages}">
    <h1>${msq}</h1>
</c:forEach>

</body>
</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>


</head>
<body>
<a  href="?lang=en">Englich</a>|
<a  href="?lang=ru">Russian</a>
<h1><spring:message code="welcome.text"/></h1>
<table border="1">

    <tr>
        <th>Id</th>
        <th>Brand</th>
        <th>Model</th>
        <th>Color</th>
    </tr>
    <c:forEach var="car" items="${messages}">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.brand}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.color}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
