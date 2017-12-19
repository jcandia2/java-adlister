<%--
  Created by IntelliJ IDEA.
  User: juan
  Date: 12/18/17
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./partials/navbar.jsp" %>
<%@ include file="./partials/custom.css" %>
<html>
<head>
    <title>Log <In></In></title>
</head>
<body>

    <h1>Log In</h1>
    <form action="/login.jsp" method="POST">
        <div>
            <label for="username">Username</label>
            <input id="username" name="username" type="text">
        </div>
        <div>

        <label for="password">Password</label>
            <input id="password" name="password" type="password">
        </div>

        <input type="submit" value="Log In">
    </form>
</div>


</body>
</html>
