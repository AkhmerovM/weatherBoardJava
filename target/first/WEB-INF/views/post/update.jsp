<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/resources/header.jsp" %>
    <meta charset="UTF-8">
    <title>Posts</title>
</head>
<body>
<h1>Update: </h1>
<form method="post" action="/posts/update/${post.id}">

<div class="form-group">
        <label for="text">Text</label>
        <input class="form-control" id="text"  type="text" value="${post.text}" name="text"  placeholder="Enter text">
        <input class="btn btn-primary" role="button" type="submit" />

</div>
</form>

<a href="/posts" role="button" class="btn btn-primary" >Posts</a>
</body>
</html>
