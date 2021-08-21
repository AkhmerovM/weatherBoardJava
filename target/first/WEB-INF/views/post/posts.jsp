<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Posts</title>
    <%@ include file="/WEB-INF/views/resources/header.jsp" %>
</head>
<body>
<div class="container">
<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
    <c:forEach items="${posts}" var="post">
        <div style="margin-bottom: 10px">
            <b>${post.id}</b>
            <u>${post.title}</u>
            <i>${post.text}</i>
            <a href="/posts/${post.id}" role="button" class="btn btn-success" >Read</a>
            <c:if test="${IS_LOGGED == true}">
                <a href="/posts/update/${post.id}" role="button" class="btn btn-warning" >Edit</a>
                <a href="/posts/remove/${post.id}" role="button" class="btn btn-danger" >Remove</a>
            </c:if>
        </div>

    </c:forEach>
</div>

<c:if test="${IS_LOGGED == true}">
    <a href="/posts/create" role="button" class="btn btn-success" >Create</a>
</c:if>
<a href="/" role="button" class="btn btn-primary" >Back</a>

</div>
</body>
</html>
