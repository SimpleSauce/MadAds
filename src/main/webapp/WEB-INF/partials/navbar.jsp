<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">Join The Mad-Adders</a></li>
            </c:if>

            <c:if test="${sessionScope.user != null}">
                <li><a href="/profile">Profile</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
            <li><a href="/ads">Browse</a></li>
        </ul>
        </div>
    </div>
</nav>
