
<html lang="en">
<head>
    <title>Posts</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap-grid.min.css">
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
</head>
<body>
<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
<div th:each="post : ${posts}" style="margin-bottom: 10px">
    <b th:text="${post.id}"></b>
    <i th:text="${post.text}"></i>
    <div th:if="${IS_LOGGED}">
        <a th:href="'/posts/update/' + ${post.id}" role="button" class="btn btn-warning" >Редактировать</a>
        <a th:href="'/posts/remove/' + ${post.id}" role="button" class="btn btn-danger" >Удалить</a>
    </div>
</div>
</div>
<div th:if="${IS_LOGGED}">
<a href="/posts/create" role="button" class="btn btn-secondary" >Create</a>
</div>
</body>
</html>
