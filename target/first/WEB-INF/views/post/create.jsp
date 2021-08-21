<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/resources/header.jsp" %>
    <title>Posts</title>
</head>
<body>
<div class="container">
<h1>Create: </h1>
<form method="post" action="/posts/create">
        <div class="form-group">
            <label for="title">Title</label>
            <input required type="text" class="form-control" id="title"  name="title" placeholder="Enter title">
        </div>
        <div class="form-group">
            <label for="summernote">Text</label>
            <textarea required class="form-control" id="summernote"  name="text" placeholder="Enter text"> </textarea>
        </div>
    <input class="btn btn-success" role="button" type="submit" />
</form>
<a href="/posts" role="button" class="btn btn-primary" >Posts</a>
</div>
</body>
</html>