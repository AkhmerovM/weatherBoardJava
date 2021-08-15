<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/resources/header.jsp" %>
    <meta charset="UTF-8">
    <title>Posts</title>
</head>
<body>
<h1>Create: </h1>
<form method="post" action="/posts/create">
        <div class="form-group">
            <label for="text">Text</label>
            <input type="text" class="form-control" id="text"  name="text" placeholder="Enter text">
        </div>
    <input class="btn btn-primary" role="button" type="submit" />
</form>
<a href="/posts" role="button" class="btn btn-primary" >Posts</a>
</body>
</html>