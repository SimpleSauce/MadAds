<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Post"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<form action="/ads/edit" method="post">
    <input name="id" type="hidden" value="${ad.id}">
    <input name="title" id="title" type="text" value="${ad.title}">
    <textarea name="description" id="description" cols="30" rows="10">${ad.description}</textarea>
    <button >Submit</button>
</form>
</body>
</html>
