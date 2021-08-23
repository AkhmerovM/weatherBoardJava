<%@ include file="/WEB-INF/views/resources/loader.jsp" %>
<script>
    window.isLoaded = false;
    document.body.style.overflow = 'hidden';
    window.addEventListener('DOMContentLoaded', function () {
        window.isLoaded = true;
        document.body.style.overflow = 'auto';
    })
    window.onscroll = function() {scrollFunction()};

    function onReady(callback) {
        var intervalId = window.setInterval(function () {
            if (window.isLoaded) {
                window.clearInterval(intervalId);
                callback.call(this);
            }
        }, 500);
    }

    function setVisible(selector, visible) {
        const component = document.querySelector(selector);
        if (component) {
            component.style.visibility = visible ? 'visible' : 'hidden';
            component.style.opacity = visible ? 1 : 0;
        }
    }

    onReady(function () {
        setVisible('#page-content', true);
        setVisible('.my-preloader', false);
    });

    function scrollFunction() {
        mybutton = document.getElementById("btnToTop");
        if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 50) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }

</script>
<nav class="navbar navbar-expand-sm">
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-submenu"><i class="fa fa-navicon"></i></span>
	</button>
	<div class="container">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="/">Главная страница</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/price/outerwear">Цены</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/works">Наши работы</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/contacts">Приемные пункты</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/feedback">Обратная связь</a>
				</li>
			</ul>
		</div>
	</div>
</nav>


<header id="header" class="cv-head-1  no-sticky " style="[style]">
	<!-- Primary Navigation
	============================================= -->
	<div class="container clearfix bottompadding-xs toppadding-xs header__main">

		<!-- Logo
		============================================= -->
		<a class="header__logo-link" href="/">
			<div id="logo" class="header__logo">
				<img class="header__logo-img" src="/static/images/main/fabrika-min.png">
				<div class='logo_desc'>
					<div class="toppadding-xs" id="site_name">Фабрика химчистки</div>
					<div class="" id="site_description">ООО "Благоустройство Запсиба"</div>
				</div>
			</div><!-- #logo end -->
		</a>


		<ul class="header-extras">
			<li class="df aic">
				<i class="i-plain fs2 fa fa-map-marker nomargin color"></i>
				<div class="he-text">
					Адреса в Новокузнецке
					<span class="text-muted">пр. Бардина 42, офис 320</span>
					<span class="text-muted">ул. Тореза 75, магазин "Гарус" </span>
				</div>
			</li>
		</ul>


	</div>

</header>
<button onclick="topFunction()" id="btnToTop" title="Go to top"><i class="fa fa-arrow-up" aria-hidden="true"></i></button>
