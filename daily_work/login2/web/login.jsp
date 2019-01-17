<%-- 
    Document   : login
    Created on : Jan 10, 2019, 9:39:52 AM
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
        <h1>Please Login</h1>
        
        <form action="loginAuthenticate.jsp">
            Name :
            <input type="text" name="username"/>
            Password :
            <input type="password" name="password"/>
            <input type="submit" value="Login"/>
        </form>
        
        <font color="red">
        <c:if test="${not empty param.errorMsg}">
            <c:out value="${param.errorMsg}"/>
        </c:if>
        </font>
    </body>
</html>
