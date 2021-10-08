<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <title>Posts</title>
</head>
<body>
<div class="container">
<h1>Create: </h1>
<form method="post" action="/admin/posts/create">
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
<a href="/admin/posts" role="button" class="btn btn-primary" >Назад</a>
</div>
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>
</body>
</html>