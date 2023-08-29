<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table>

        <tr>
            <td>Id</td>
            <td>Nom</td>
            <td>Prenom</td>
            <td>Age</td>
        </tr>
    

    <c:forEach var="user" items="${personnes}">

        <tr>
        <td><c:out value="${user.id}" /></td>
        <td><c:out value="${user.nom}" /></td>
        <td><c:out value="${user.prenom}" /></td>
        <td><c:out value="${user.age}" /></td>
        
        </tr>
        </c:forEach>

    </table>
</body>
</html>