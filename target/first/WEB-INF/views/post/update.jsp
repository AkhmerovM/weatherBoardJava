<html lang="en">
<head>
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap-grid.min.css">
    <meta charset="UTF-8">
    <title>Posts</title>
</head>
<body>
<h1>Update: </h1>
<form method="post" action="'/posts/update/' + ${post.id}">

<div class="form-group">
        <label for="text">Text</label>
        <input class="form-control" id="text"  type="text" value="${post.text}" name="text"  placeholder="Enter text">
        <input class="btn btn-primary" role="button" type="submit" />

</div>
</form>

<a href="/posts" role="button" class="btn btn-primary" >Posts</a>
</body>
</html>
