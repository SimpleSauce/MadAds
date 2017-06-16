<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <form id="searchForm" action="/ads" method="post"><input name="searchTerm" id="searchBar" type="text" placeholder="Search: "></form>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.user == null}">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">Register</a></li>
            </c:if>

            <c:if test="${sessionScope.user != null}">
                <li><a href="/profile">My Ads</a></li>
                <li><a href="/ads/create">Create Ad</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
            <li><a href="/ads">Browse</a></li>
        </ul>
    </div>
    </div>
</nav>