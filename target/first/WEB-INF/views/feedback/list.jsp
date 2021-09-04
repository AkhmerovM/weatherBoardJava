<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Feedbacks</title>
</head>
<body>
<div class="container">
		<c:forEach items="${feedbacks}" var="feedback">
			<div style="margin-bottom: 10px">
				<b>${feedback.id}</b>
				<u>${feedback.name}</u>
				<i>${feedback.text}</i>
			</div>

		</c:forEach>
</div>
</body>
</html>
