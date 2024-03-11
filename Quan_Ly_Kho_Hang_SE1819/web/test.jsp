

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${requestScope.pdata}" var="pro">
            <img class="img-fluid" src="img/image/${pro.image}" alt="" />
                <h1>${pro.name}</h1>
                
        </c:forEach>

    </body>
</html>
