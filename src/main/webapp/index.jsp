<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title><%= "some title" %></title>
    <%@ include file="partials/head.jsp" %>

</head>
<body>
<%@ include file="./partials/navbar.jsp" %>
<h1>Welcome, please log in.</h1>
<form action="/login.jsp">
    <input type="submit" value="Go to Login">
</form>

</body>
</html>
