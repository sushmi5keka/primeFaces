<%-- 
    Document   : index
    Created on : Jan 10, 2019, 9:39:40 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <c:if test="${empty sessionScope['loginUser']}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <a href="logout.jsp">Logout
            <c:out value="${sessionScope['loginUser']}"></c:out>
        </a>
        
    </body>
</html>
