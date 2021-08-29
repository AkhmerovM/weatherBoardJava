<div class="section header-map nopadding" style="

margin-top:unset;
margin-bottom:unset;
">
    <div class="" style="background-color: rgba(0, 0, 0, 0);
padding-top:60px;
padding-bottom:unset;
    ">
        <div class="nocontainer clearfix">

            <div class="heading-block divcenter center" style="max-width: 600px">
                <h2 class="notransform t600 mb-2 editable block_80967 item-option_581074 field_title" style="">Наши
                    адреса в Новокузнецке</h2>
                <p class="editable block_80967 item-option_1 field_text">пр. Бардина 42, офис 320</p>
                <p class="editable block_80967 item-option_1 field_text">ул. Тореза 75, магазин "Гарус" </p>
            </div>


            <div id="map" style="width: 100%; height: 400px"></div>
            <script src="https://api-maps.yandex.ru/2.1/?apikey=a6c7b562-99ba-48bd-97e3-ccf28ddfeee9&lang=ru_RU"
                    type="text/javascript"></script>
            <script type="text/javascript">
                // Функция ymaps.ready() будет вызвана, когда
                // загрузятся все компоненты API, а также когда будет готово DOM-дерево.
                ymaps.ready(function () {
                    var myMap = new ymaps.Map('map', {
                            center: [53.795233, 87.163379],
                            zoom: 11
                        }, {
                            searchControlProvider: 'yandex#search'
                        }),

                        // Создаём макет содержимого.
                        MyIconContentLayout = ymaps.templateLayoutFactory.createClass(
                            '<div  style="color: #4032e2; font-weight: bold;"></div>'
                        ),

                        myPlacemarkWithContent1 = new ymaps.Placemark([53.825233, 87.163379], {
                            hintContent: 'ул. Тореза 75, магазин "Гарус"',
                            balloonContent: 'ул. Тореза 75, магазин "Гарус"',
                            iconContent: '12'
                        }, {
                            // Опции.
                            // Необходимо указать данный тип макета.
                            iconLayout: 'default#imageWithContent',
                            // Своё изображение иконки метки.
                            // Размеры метки.
                            iconImageSize: [40, 40],
                            // Смещение левого верхнего угла иконки относительно
                            // её "ножки" (точки привязки).
                            iconImageOffset: [-24, -24],
                            // Смещение слоя с содержимым относительно слоя с картинкой.
                            iconContentOffset: [10, 10],
                            // Макет содержимого.
                            iconContentLayout: MyIconContentLayout
                        });
                    myPlacemarkWithContent2 = new ymaps.Placemark([53.756419, 87.135999], {
                        hintContent: 'пр. Бардина 42, офис 320',
                        balloonContent: 'пр. Бардина 42, офис 320',
                    }, {
                        // Опции.
                        // Необходимо указать данный тип макета.
                        iconLayout: 'default#imageWithContent',
                        // Своё изображение иконки метки.
                        // Размеры метки.
                        iconImageSize: [40, 40],
                        // Смещение левого верхнего угла иконки относительно
                        // её "ножки" (точки привязки).
                        iconImageOffset: [-24, -24],
                        // Смещение слоя с содержимым относительно слоя с картинкой.
                        iconContentOffset: [15, 15],
                        // Макет содержимого.
                        iconContentLayout: MyIconContentLayout
                    });
                    myMap.behaviors.disable('scrollZoom');
                    myMap.geoObjects
                        .add(myPlacemarkWithContent1)
                        .add(myPlacemarkWithContent2);
                });

            </script>

            <!-- Yandex.Metrika counter -->
            <script type="text/javascript">
                (function (m, e, t, r, i, k, a) {
                    m[i] = m[i] || function () {
                        (m[i].a = m[i].a || []).push(arguments)
                    };
                    m[i].l = 1 * new Date();
                    k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1, k.src = r, a.parentNode.insertBefore(k, a)
                })
                (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

                ym(57663610, "init", {
                    clickmap: true,
                    trackLinks: true,
                    accurateTrackBounce: true,
                    webvisor: true
                });
            </script>
            <noscript>
                <div><img src="https://mc.yandex.ru/watch/57663610" style="position:absolute; left:-9999px;" alt=""/>
                </div>
            </noscript>
            <!-- /Yandex.Metrika counter -->

        </div>
    </div>
</div>

<footer id="footer" class="dark footer_5" style=" ">
    <div class="overfill" style="background-color: rgba(0, 0, 0, 0.5);	"></div>

    <div class="container z1000">

        <!-- Footer Widgets
        ============================================= -->
        <div class="footer-widgets-wrap clearfix">

            <div class="footer__name">

                <div class=" clearfix" style="margin-bottom: -20px;">
                    <div class="fancy-title title-bottom-border">
                        <h3 class="editable block_80968 item-option_332185 field_title">Фабрика химчистки</h3>
                    </div>
                    <p class="editable block_80968 item-option_2 field_text">Высокое качество по разумным ценам</p>

                </div>


            </div>

            <div class="footer__contacts">

                <div class=" clearfix" style="margin-bottom: -20px;">

                    <div class="fancy-title title-bottom-border">
                        <h3 class="editable block_80968 item-option_949792 field_contacts_title">Контакты</h3>
                    </div>

                    <div class=" icons_block">
                        <div class="socials_list">
                            <table class="footer__table">
                                <tr>
                                    <td><i class="i-plain fs-middle fa fa-phone nomargin color"></i></td>
                                    <td><span class="editable block_80968 item-option_899954 field_phone">8(3843) 46-36-44</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><i class="i-plain fs-middle fa fa-map-marker nomargin color"></i></td>
                                    <td><span class="editable block_80968 item-option_872383 field_address">г. Новокузнецк, пр. Бардина 42, офис 320</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="socials_list">
                            <table class="footer__table">
                                <tr>
                                    <td><i class="i-plain fs-middle fa fa-phone nomargin color"></i></td>
                                    <td><span class="editable block_80968 item-option_899954 field_phone">8-913-136-20-68</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><i class="i-plain fs-middle fa fa-map-marker nomargin color"></i></td>
                                    <td><span class="editable block_80968 item-option_872383 field_address">г. Новокузнецк, ул. Тореза 75, магазин "Гарус" </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>

            </div>


        </div><!-- .footer-widgets-wrap end -->
    </div>
    <div class="footer__bottom">
        <div class="container">
            <div class="footer__company-name">
                Фабрика химчистки © 2020 | Все права защищены
            </div>
        </div>
    </div>

    <script type="module" src="/dist/bundle.js"></script>
</footer>
