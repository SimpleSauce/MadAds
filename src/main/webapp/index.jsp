<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div>
    <div id="logoBack">
        <h1 id="logo1">Mad</h1>
        <h1 id="logo2">Ads</h1>
    </div>
</div>
<div id="splashFeatures">
    <ul class="splashListItems">
        Deals so good, it's m<span id="mADness">AD</span>ness
        <li class="splashLi"><span class="glyphicon glyphicon-usd" aria-hidden="true"></span> Post items you don't want
        </li>
        <li class="splashLi"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Buy items you do
            want
        </li>

    </ul>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/footer2.jsp"/>
</body>
</html>
