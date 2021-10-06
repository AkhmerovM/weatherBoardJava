<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
	<%@ include file="/WEB-INF/views/resources/imports.jsp" %>
	<title>Фабрика химчистки в Новокузнецке</title>
	<meta name="description" content="Химчистка в Новокузнецке. Более 30 лет на рынке услуг. Работы выполняются квалифицированным персоналом по новейшим технологиям. У нас более 3000 благодарных клиентов. Постоянным заказчикам и пенсионерам предоставляем скидки до 10%. Доверяйте нам заботу о ваших вещах!">
</head>
<body>
<sec:authorize var="isAdmin" access="hasAuthority('ADMIN')" />
<sec:authorize var="isUser" access="hasAuthority('USER')" />
<div class="container">
	<sec:authorize access="hasAuthority('ADMIN')">
		<a href="/admin/cabinet" class="btn btn-primary">Панель администратора</a>
	</sec:authorize>
	<div class="container">
		<div class="d-flex jc-sp">
			<div>
				<form action="/profile/rename" method="post" >
					<h2>Профиль</h2>
					<p>${user.email}</p>
					<div class="form-group">
						<label>Имя
							<input name="firstname" value="${user.firstname}" />
						</label>
					</div>
					<div class="form-group">
						<label>Фамилия
							<input name="lastname" value="${user.lastname}" />
						</label>
					</div>
					<div class="form-group">
						<label for="admin">Администратор</label><input type="radio" id="admin" checked="${isAdmin}" name="role" value="ADMIN">
					</div>
					<div class="form-group">
						<label for="user">Пользователь</label><input type="radio" id="user" checked="${isUser}" name="role" value="USER">
					</div>
					<input type="submit" class="btn btn-primary" value="Сохранить"/>
				</form>
			</div>
			<div>
				<h3>Мои статьи:</h3>
				<div>
																																			<%--					<c:forEach var="post" items="${user.posts}">--%>
																																			<%--						<p>${post.title}</p>--%>
																																			<%--					</c:forEach>--%>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
