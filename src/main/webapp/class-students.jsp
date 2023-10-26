<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Students of a Class</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/spaceship.jpg');background-size: cover">
<div id="page">
    <jsp:include page="left-list.jsp" />
    <div id="wrapper">
        <div id="header">
            <h3>Students of ${SUBJECT} class section ${SECTION}</h3>
        </div>
    </div>
    <div id="container">
        <div id="content">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Age</th>
                </tr>
                <c:forEach var="tempStudent" items="${STUDENTS_LIST}">
                    <tr>
                        <td>${tempStudent.getFname()}</td>
                        <td>${tempStudent.getLname()}</td>
                        <td>${tempStudent.getAge()}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
