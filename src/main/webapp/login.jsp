<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
    <%@ include file="partials/head.jsp" %>

</head>
<body>
<%@ include file="partials/navbar.jsp" %>


<%--using expression language--%>
    <%--<c:if test="${param.username.equalsIgnoreCase('admin') && param.password == 'password'}">--%>
        <%--<c:redirect url = "/profile.jsp"/>--%>
    <%--</c:if>--%>
        <%--<p>"username": ${param.username}</p>--%>
        <%--<p>"password": ${param.password}</p>--%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(request.getMethod().equalsIgnoreCase("post")) {
        if(username.equalsIgnoreCase("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>

<h1>Log In</h1>
<form action="/login.jsp" method="POST">
    <div class="form-group">
        <label for="username">Username</label>
        <input id="username" class="form-control" name="username" type="text">
    </div>
    <div class="form-group">

        <label for="password">Password</label>
        <input id="password" class="form-control" name="password" type="password">
    </div>

    <input type="submit" class="btn btn-primary" value="Log In">
</form>


</body>
</html>
