<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Posts</title>
    <meta charset="UTF-8">
    <%@ include file="/WEB-INF/views/resources/header.jsp" %>
</head>
<body>

<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
    <c:forEach items="${posts}" var="post">
        <div style="margin-bottom: 10px">
            <b>${post.id}</b>
            <i>${post.text}</i>
            <c:if test="${IS_LOGGED == true}">
            <a href="/posts/update/${post.id}" role="button" class="btn btn-warning" >Edit</a>
                <a href="/posts/remove/${post.id}" role="button" class="btn btn-danger" >Remove</a>
            </c:if>
        </div>

    </c:forEach>
</div>

<c:if test="${IS_LOGGED == true}">
    <a href="/posts/create" role="button" class="btn btn-secondary" >Create</a>
</c:if>

</body>
</html>
