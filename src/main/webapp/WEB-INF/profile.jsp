<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, <c:out value="${sessionScope.user.username}!"/></h1>
        <h2>Your Ads</h2>
            <c:forEach var="ad" items="${ads}">
                <c:if test="${sessionScope.user.id == ad.userId}">
                <div class="adBackground">
                    <div class="col-md-6">
                        <h2><c:out value="${ad.title}"/></h2>
                        <p><c:out value="${ad.description}"/></p>
                    </div>
                </div>
                </c:if>
            </c:forEach>

    </div>
    <!-- //TODO Allow users to delete/update their posted ads-->
</body>
</html>
