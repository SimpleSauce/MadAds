<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Browsing all Ads</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="adBackground">
            <a href="/ads/singleView?id=${ad.id}">
                <div class="clickableItem">
                    <h2><c:out value="${ad.title}"/></h2>
                    <p><c:out value="${ad.description}"/></p>
                </div>
            </a>
        </div>
    </c:forEach>
</div>

</body>
</html>
