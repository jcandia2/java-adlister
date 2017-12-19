<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>

</head>
<body>


<%--using expression language--%>
<%--<c:if test="${param.username.equalsIgnoreCase('admin') && param.password == 'password'}">--%>
<%--<c:redirect url = "/profile.jsp"/>--%>
<%--</c:if>--%>
<%--<p>"username": ${param.username}</p>--%>
<%--<p>"password": ${param.password}</p>--%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equalsIgnoreCase("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
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
