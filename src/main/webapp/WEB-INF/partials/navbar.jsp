<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">Join The Mad-Ad'ers >:)</a></li>
            </c:if>

            <c:if test="${sessionScope.user != null}">
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
            </c:if>
            <li><a href="/ads">Browse</a></li>

            <!-- TODO: add functionality to hide/show options based on logged in status-->
            <!-- TODO: Do I do it in JS file or can I do it here?? -->
        </ul>
        </div>
    </div>
</nav>
