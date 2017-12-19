<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome" />
    </jsp:include>

</head>
<body>
<%@ include file="./partials/navbar.jsp" %>
<h1>Welcome, please log in.</h1>
<form action="/login.jsp">
    <input type="submit" class="btn btn-primary" value="Go to Login">
</form>


</body>
</html>
