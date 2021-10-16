<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
    <meta charset="utf-8">
    <title>Registration</title>
</head>

<body>
<c:if test="${!usernameError.blank}" >
    <div class="alert alert-danger" role="alert">
        ${usernameError}
    </div>
</c:if>
<div class="d-flex justify-content-center">
<div class="col-12 col-md-6">
    <a href="/" class="btn badge-info" >Главная страница</a>
    <form method="POST" action="/auth/registration" >
        <h2>Registration</h2>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email"  name="email" value="" placeholder="Введите email">
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password"  name="password" value="" placeholder="Введите пароль">
        </div>
        <div class="form-group">
            <label for="firstname">Имя</label>
            <input type="text" class="form-control" id="firstname"  name="firstname" value="" placeholder="Введите имя">
        </div>
        <div class="form-group">
            <label for="lastname">Фамилия</label>
            <input type="text" class="form-control" id="lastname"  name="lastname" value="" placeholder="Введите фамилию">
        </div>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="isMan" name="isMan" value="yes" >
            <label class="form-check-label" for="isMan">
                Мужчина
            </label>
        </div>
        <button class="btn badge-primary" type="submit">Регистрация</button>
    </form>
</div>
</div>
</body>
</html>