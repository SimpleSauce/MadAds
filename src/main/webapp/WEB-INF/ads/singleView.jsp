<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Viewing Ad</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Post"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="viewSingleAdd">
        <h2><c:out value="${ad.title}"/></h2>
        <p><c:out value="${ad.description}"/></p>
        <p><c:out value="${ad.userId}"/></p>
    </div>
</div>


<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
