<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="domain.Location"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leuven City</title>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <link type="text/css" rel="stylesheet"  href="<c:url value="/css/stylesheet.css"/>"/>
        <script src="<c:url value="/js/mapScript.js" />"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
                <form method="POST" action="newCompetition.htm">
            <table>
                <tr>
                    <th>name</th>
                </tr>
                <c:forEach var="location" items="${locations}">
                <tr>
                    <td>${location.name}</td>
                    </tr>
                </c:forEach>
            </table>
            <input type="submit" value="new Competition"/>
        </form>
    </body>  
</html>
