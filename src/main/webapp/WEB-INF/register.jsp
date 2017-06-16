<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Become One of Us!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <form action="/register" method="POST">
        <div class="form-group">
            <h1>Join The Clan</h1>
            <label for="username">Username</label>
            <input id="username" type="text" name="username" class="form-control">
        </div>
        <div class="form-group">
            <label for="email">E-mail</label>
            <input id="email" type="text" name="email" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" type="password" name="password" class="form-control">
        </div>
        <button class="btn" type="submit">Submit</button>
    </form>
</div>

</body>
</html>
