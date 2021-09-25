<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
	<%@ include file="/WEB-INF/views/resources/imports.jsp" %>
	<title>Фабрика химчистки в Новокузнецке</title>
	<meta name="description" content="Химчистка в Новокузнецке. Более 30 лет на рынке услуг. Работы выполняются квалифицированным персоналом по новейшим технологиям. У нас более 3000 благодарных клиентов. Постоянным заказчикам и пенсионерам предоставляем скидки до 10%. Доверяйте нам заботу о ваших вещах!">
</head>
<body>
<div class="container">
	<div sec:authorize="hasAuthority('ADMIN')">
		<a href="/admin/cabinet" class="btn btn-primary">Панель администратора</a>
	</div>
	<div class="container">
		<h2>Профиль</h2>
		<h4>${user.email}</h4>
		<h4>${user.firstname}</h4>
		<h4>${user.lastname}</h4>
		<h4>${user.role}</h4>
	</div>
</div>
</body>
</html>
