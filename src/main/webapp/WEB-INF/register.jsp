<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Become One of Us!" />
    </jsp:include>
</head>
<body>
    <form action="/register" method="POST">
        <label for="username"></label>
        <input type="text" name="username">
        <label for="password"></label>
        <input type="password" name="password">
    </form>
</body>
</html>
