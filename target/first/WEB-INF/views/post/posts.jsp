<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap-grid.min.css">
    <meta charset="UTF-8">
    <title>Posts</title>
</head>
<body>
<security:authorize>
    <p>Text</p>
</security:authorize>
<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
<div th:each="post : ${posts}" style="margin-bottom: 10px">
    <b th:text="${post.id}"></b>
    <i th:text="${post.text}"></i>
    <a  th:href="'/posts/update/' + ${post.id}" role="button" class="btn btn-warning" >Редактировать</a>
    <a th:href="'/posts/remove/' + ${post.id}" role="button" class="btn btn-danger" >Удалить</a>
</div>
</div>
<a href="/posts/create" role="button" class="btn btn-secondary" >Create</a>
</body>
</html>
