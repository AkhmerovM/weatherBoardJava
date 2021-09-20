<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Posts</title>
    <%@ include file="/WEB-INF/views/resources/imports.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/views/resources/header.jsp" />
<div class="section nobg dark nopadding" style="
background: url('http://652.wp.shabloner.ru/themes/shabloner_652/files/st_block_80978_4_bg.jpg') left 50% top 50% / cover no-repeat fixed !important;
margin-top:unset;
margin-bottom:unset;
">
    <div class="" style="background-color: rgba(0, 0, 0, 0.75);
padding-top:60px;
padding-bottom:60px;
    ">
        <div class="container clearfix">
            <div class="divcenter center" style="max-width: 600px">
                <h2 class="notransform t600 mb-2 editable block_80978 item-option_291671 field_title">Статьи</h2>
            </div>
        </div>
    </div>
</div>
<div class="container clearfix body-container">
    <div class="text-muted bottommargin-sm"><div class="kama_breadcrumbs"><a href="/">Главная</a> / <a href="/posts/">Статьи</a> / ${post.title}</div></div>
    <div class="heading-block ">
        <h1>${post.title}</h1>
    </div>
    <div class="t300">
        <p>${post.text}</p>
    </div>
</div>
<jsp:include page="/WEB-INF/views/resources/footer.jsp"  />
</body>
</html>
