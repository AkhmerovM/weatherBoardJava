<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<jsp:include page="/WEB-INF/views/resources/imports.jsp"  />
	<title>Фабрика химчистки в Новокузнецке</title>
	<meta name="description" content="Химчистка в Новокузнецке. Более 30 лет на рынке услуг. Работы выполняются квалифицированным персоналом по новейшим технологиям. У нас более 3000 благодарных клиентов. Постоянным заказчикам и пенсионерам предоставляем скидки до 10%. Доверяйте нам заботу о ваших вещах!">
</head>
<body>
<div class="container">
	<h3>Обратная связь</h3>
	<a href="/admin/cabinet" role="button" class="btn btn-success my-lg-2" >Назад</a>
	<table class="table">
		<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">Имя</th>
			<th scope="col">Почта</th>
			<th scope="col">Текст</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${feedbacks}" var="feedback">
			<tr>
				<td>${feedback.id}</td>
				<td>${feedback.name}</td>
				<td>${feedback.email}</td>
				<td>${feedback.text}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>


</div>
</body>
</html>
