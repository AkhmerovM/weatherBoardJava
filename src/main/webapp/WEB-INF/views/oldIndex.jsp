<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
    <meta charset="utf-8">
    <title>Main</title>
</head>
<body>
<h2>Main Page</h2>
<a href="/posts" role="button" class="btn btn-primary">Posts</a>
<a href="/login" role="button" class="btn btn-warning">Login</a>
<a  role="button" href="/auth/registration" class="btn btn-info">Registration</a>
</body>
</html>