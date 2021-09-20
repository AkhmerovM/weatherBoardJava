<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<div class="container body-container">
    <div id="posts" class="small-thumbs">
    <c:forEach items="${posts}" var="post">
        <div class="entry clearfix">
            <div class="entry-image ">
                <a href="/posts/${post.id}"><img class="image_fade" src="http://652.wp.shabloner.ru/themes/shabloner_652/images/table.jpg" style="opacity: 1;"></a>
            </div>

            <div class="entry-c">
                <div class="entry-title">
                    <h3><a href="/posts/${post.id}">${post.title}</a></h3>
                </div>
                <ul class="entry-meta clearfix">
                    <li><i class="icon-calendar3"></i><fmt:formatDate value="${post.creation_date}" pattern="yyyy-MM-dd" /></li>
                </ul>
                <div class="entry-content">
                    <a href="/posts/${post.id}" class="more-link">Читать далее...</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</div>
<jsp:include page="/WEB-INF/views/resources/footer.jsp"  />
</body>
</html>
