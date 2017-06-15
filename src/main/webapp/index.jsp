<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div id="logoBack">
        <h1 id="logo1">Mad</h1>
        <h1 id="logo2">Ads</h1>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
