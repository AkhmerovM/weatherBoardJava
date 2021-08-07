<html>
<head>
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="/static/css/bootstrap-grid.min.css">
    <meta charset="utf-8">
    <title>Registration</title>
</head>

<body>
<div class="d-flex justify-content-center">
<div class="col-12 col-md-6">
    <a href="/" class="btn badge-info" >Main Page</a>
    <form method="POST" action="/auth/registration" >
        <h2>Registration</h2>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email"  name="email" value="dsadsa@mail.ru" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password"  name="password" value="3123212" placeholder="Enter password">
        </div>
        <div class="form-group">
            <label for="firstname">Firstname</label>
            <input type="text" class="form-control" id="firstname"  name="firstname" value="ivan" placeholder="Enter firstname">
        </div>
        <div class="form-group">
            <label for="lastname">Lastname</label>
            <input type="text" class="form-control" id="lastname"  name="lastname" value="ivanov" placeholder="Enter lastname">
        </div>
        <div class="form-check">
            <input class="form-check-input" name="is_man" type="checkbox" value="" id="is_man">
            <label class="form-check-label" for="is_man">
                Male
            </label>
        </div>
        <button class="btn badge-primary" type="submit">Register</button>
    </form>
</div>
</div>
</body>
</html>