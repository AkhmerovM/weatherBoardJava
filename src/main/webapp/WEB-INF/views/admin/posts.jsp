<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Posts</title>
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
</head>
<body>
<div class="container">
    <a href="/admin/cabinet" role="button" class="btn btn-success my-lg-2" >Назад</a>
    <a href="/admin/posts/create" role="button" class="btn btn-secondary" >Создать статью</a>
    <div class="heading-block ">
        <h1>Статьи</h1>
    </div>
    <div id="posts" class="small-thumbs">
    <c:forEach items="${posts}" var="post">
        <div class="entry clearfix">
            <div class="entry-c">
                <div class="entry-title">
                    <h3><a href="/posts/${post.id}">${post.title}</a></h3>
                </div>
                <ul class="entry-meta clearfix">
                    <li><i class="icon-calendar3"></i> <fmt:formatDate value="${post.creation_date}" pattern="yyyy-MM-dd" /></li>
                </ul>
            </div>
            <c:if test="${true}">
                <a href="/admin/posts/update/${post.id}" role="button" class="btn btn-warning" >Edit</a>
                <a href="/admin/posts/remove/${post.id}" role="button" class="btn btn-danger" >Remove</a>
            </c:if>
        </div>
    </c:forEach>
</div>
</div>
</body>
</html>
