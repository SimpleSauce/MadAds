<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 id="welcome-back">Welcome back</h1>
        <div class="form-group">
            <div id="down-arrow-bounce">
                <span id="down-arrow-glyph" class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
            </div>
            <form action="/login" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>

            <input type="submit" class="loginButton" value="Log In">
        </form>
        </div>
    </div>
</body>
</html>

<%--btn btn-primary btn-block--%>
