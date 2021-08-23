<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Posts</title>
    <meta charset="UTF-8">
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
</head>
<body>

<h1>Posts: </h1>
<div style="margin-bottom: 50px" >
        <div style="margin-bottom: 10px">
            <b>${post.id}</b>
            <u>${post.title}</u>
            <i>${post.text}</i>
        </div>
</div>

    <a href="/posts" role="button" class="btn btn-success" >Back</a>

</body>
</html>
