<html>
<head>
    <jsp:include page="/WEB-INF/views/resources/imports.jsp"  />
    <meta charset="UTF-8">
    <title>Фабрика химчистки в Новокузнецке</title>
    <meta name="description" content="Химчистка в Новокузнецке. Более 30 лет на рынке услуг. Работы выполняются квалифицированным персоналом по новейшим технологиям. У нас более 3000 благодарных клиентов. Постоянным заказчикам и пенсионерам предоставляем скидки до 10%. Доверяйте нам заботу о ваших вещах!">
</head>
<body class="stretched no-transition main_page [page_preview]">
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
                <h2 class="notransform t600 mb-2 editable block_80978 item-option_291671 field_title">Форма обратной
                    связи</h2>
            </div>
        </div>
    </div>
</div>
<div class="feedback" style="display: flex; justify-content: center">
    <div class="col-md-10 col-lg-8 col-xl-6" >

        <form class="feedback-form">
            <div class="mb-3">
                <label for="exampleInputName" class="form-label">Ваше имя</label>
                <input class="form-control" placeholder="Имя" id="exampleInputName" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail" class="form-label">Почта mail</label>
                <input type="email" placeholder="почта" class="form-control" id="exampleInputEmail"
                       aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Напишите вопрос/отзыв/пожелание</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Отправить</button>
        </form>
        <div class="feedback-send" style="display: none; padding: 100px 0; text-align: center">
            <h3>Ваше сообщение успешно отправлено</h3>
        </div>
        <div class="feedback-error" style="display: none; padding: 100px 0; text-align: center; color: #b31e1e">
            <h3>Упс, что-то пошло не так</h3>
            <h3>Попробуйте позже</h3>
        </div>
        <div class="feedback-error-empty" style="display: none; padding: 20px 0; color: #b31e1e">
            <h5>Заполните все поля</h5>
        </div>
    </div>
</div>

</body>
</html>

