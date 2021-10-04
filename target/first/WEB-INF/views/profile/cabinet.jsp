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
		<div class="d-flex jc-sp">
			<div>
				<h2>Профиль</h2>
				<p>${user.email}</p>
				<p>${user.firstname}</p>
				<p>${user.lastname}</p>
				<p>${user.role}</p>
			</div>
			<div>
				<h3>Мои статьи:</h3>
				<div>
					<c:forEach var="post" items="${user.posts}">
						<p>${post.title}</p>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
