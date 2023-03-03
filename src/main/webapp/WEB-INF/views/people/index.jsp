<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 30056685(03)
  Date: 03.03.2023
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="5px">
    <thead>
    <tr>
        <th>id</th>
        <th>age</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${people}" var="person">
        <tr>
            <td>${person.id}</td>
            <td>${person.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
