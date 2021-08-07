<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Регистрация</title>
</head>

<body>
<div>
    <form method="POST" action="/auth/registration" >
        <h2>Регистрация</h2>
        <div>
            <input name="email" type="text"   placeholder="email"
                        autofocus="true" value="dsa" />
        </div>
        <div>
            <input name="password"  type="password" value="3123212" placeholder="password" />
        </div>
        <div>
            <input name="firstname"  type="text" value="ivan" placeholder="firstname" />
        </div>
        <div>
            <input name="lastname"  type="text"  value="ivanov" placeholder="lastname" />
        </div>
        <div>
            <label for="is_man" > male
                <input id="is_man" name="is_man"  type="checkbox" placeholder="male" />
            </label>
        </div>
        <button type="submit">Зарегистрироваться</button>
    </form>
    <a href="/">Главная</a>
</div>
</body>
</html>