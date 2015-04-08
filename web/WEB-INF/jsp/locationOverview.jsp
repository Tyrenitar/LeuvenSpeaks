<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="domain.Location"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leuven Speaks</title>
        <link rel="stylesheet" type="text/css" href='<c:url value="/css/stylesheet.css"/>'/>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700|Questrial"/>
        <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js'></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">    
        <link rel="shortcut icon" type="image/ico" href="<c:url value="images/favicon.ico"/>">
    </head>
    <body>
        
        <jsp:include page="header.jspf"/>
        <script type="text/javascript" src="<c:url value="/js/style.js" />"></script>

        <script>
            for each( test in "${locations}") {
            alert("${test.name}");
        }
        </script>
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
