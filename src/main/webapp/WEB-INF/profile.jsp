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
        <h1>Welcome, <span id="profileName"><c:out value="${sessionScope.user.username}"/></span>!</h1>
        <h1>Your Ads</h1>
        <c:forEach var="ad" items="${ads}">
            <c:if test="${sessionScope.user.id == ad.userId}">
                <div class="col-md-6 adBackground">
                    <h2><c:out value="${ad.title}"/></h2>
                    <p><c:out value="${ad.description}"/></p>
                    <button id="edit" class="customButton btn"><span class="glyphicon glyphicon-pencil"></span></button>
                    <form action="/ads/delete" method="post" class="deleteForm">
                        <input name="id" type="hidden" value="${ad.id}">
                        <button type="submit" class="customButton deletion btn"><span class="glyphicon glyphicon-trash"></span>
                        </button>
                    </form>
                </div>
            </c:if>
        </c:forEach>


    </div>
    <!-- //TODO Allow users to delete/update their posted ads-->
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
