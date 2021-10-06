<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<jsp:include page="/WEB-INF/views/resources/imports.jsp"  />
	<title>Панель администратора</title>
</head>
<body>
	<div class="container">
		<h3>Панель администратора</h3>
		<a href="/" role="button" class="btn btn-success" >На сайт</a>
		<a href="/profile/cabinet" role="button" class="btn btn-secondary" >Личный кабинет</a>
		<a href="/admin/feedback" role="button" class="btn btn-primary" >Обратная связь</a>
		<a href="/admin/posts" role="button" class="btn btn-warning" >Статьи</a>
	</div>
</body>
</html>
