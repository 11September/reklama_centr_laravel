@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/service.css') }}">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.css">
@endsection

@section('content')
    @include('partials.slider')
    @include('partials.categories')

    <section class="service_drunk">
        <div class="container">
            <div class="row">

                @include('partials.sidebar')

                <div class="col-lg-9 col-md-8 col-sm-12">

                    <div class="service_drunk_head_left">
                        <img src="images/our_works_delimiter.png">
                        <p>Главная</p>
                        <p>/</p>
                        <p>Услуги</p>
                        <p>/</p>
                        <h2>ШИРОКОФОРМАТНАЯ ПЕЧАТЬ</h2>
                    </div>

                    <div class="service_drunk_content">
                        <img class="service_drunk_view" src="images/service_drunk_view.png">

                        <h3>Широкоформатная печать<br>
                            в г Сумы</h3>

                        <p>
                            Широкоформатная печать в г Сумы – наиболее востребованный и популярный способ получения четких цветных изображений больших форматов. Они выдерживают любые погодные условия, будь то палящее солнце, ветер или град.
                        </p>

                        <p class="clear">
                            Используемый в наружной рекламе города Сумы широкоформат позволяет создавать красочные и яркие баннеры, уличные перетяжки и плакаты, которые гарантированно обеспечат Вам приток новых клиентов.
                        </p>

                        <p>
                            Для внутреннего оформления помещений, создания выставочных стендов и витрин, оформления транспорта используется интерьерная широкоформатная печать. Использование специальной технологии печати позволяет получать широкоформат с высокой степенью детализации. При этом степень зернистости и растекание минимальное и  даже при самом его близком рассмотрении он выглядит четко.
                        </p>

                        <p>
                            В компании «Реклама Центр» в городе Сумы широкоформатная печать представлена следующими направлениями:
                        </p>

                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;печать широкоформатная для всех видов полиграфической рекламы (разрешение печати 180-720 dpi);<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;фотокачественная интерьерная  широкоформатная печать (разрешение печати 720-1440 dpi);<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;широкоформатная печать на баннере (включает разработку макета баннера и подготовку к монтажу);<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;широкоформатная печать с использованием самоклеющейся пленки. Такой широкоформат в г Сумы используется чаще всего для оформления магазинных витрин и полок, торговых точек и рекламных вывесок. Для рекламы на автотранспорте также используется данный вид печати;<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;печать широкоформатная на искусственном холсте;<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;изготовление бумажных обоев разной текстуры с фотографическим качеством.
                        </p>

                        <p>
                            Чтобы печатать качественный широкофрмат в г Сумы мы используем современное высокотехнологичное оборудование.  Широкофрматные принтеры используются для высококачественной печати изображений любого размера (от наклеек до баннеров), а также для скоростной печати изображений широкоформата, для которого не требуется высокое разрешение (бигборды, рекламные растяжки и др).
                        </p>

                        <p>
                            Плоттер режущий GCC Jaguar IV используется для высечки (вырезки) готового изображения. Высокое качество и точность высечки достигается благодаря оптическому датчику плоттера.
                        </p>

                        <p>
                            Широкоформатная печать в г Сумы возможна на баннерной ткани, виниле, холсте,  фотобумаге, ПЭТ пленке и прочих материалах. Быстросохнущие сольвентные чернила позволяют сразу после печати приступать к порезке.
                        </p>

                        <div class="service_drunk_comment_panel">
                            <img src="images/service_drunk_comment.png">
                            <p>
                                Компания «Реклама Центр» изготовит на заказ в г Сумы <br>
                                широкоформат необходимого Вам размера и качества. Ждем Вас!.
                            </p>
                        </div>

                    </div>

                </div>

                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="service_drunk_interested_in">
                        <h3>Выберите интересующий Вас раздел:</h3>

                        <div>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Печать на пленке</p>
                            </a>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Печать на баннере</p>
                            </a>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Интерьерная печать</p>
                            </a>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Печать бигбордов и больших форматов</p>
                            </a>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Печать на холсте</p>
                            </a>
                            <a href="#" >
                                <img src="images/service_drunk_menu_point.png">
                                <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                <p>Печать на сетке</p>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection

@section('scripts')
    {{--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>--}}
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>

    <script>
//        $(function () {
//            var f = $('.filtr-container').filterizr({controlsSelector: '.fltr-controls'});
//            $('.color-container-1').filterizr({controlsSelector: '.color-controls-1'});
//            $('.color-container-2').filterizr({controlsSelector: '.color-controls-2', layout: 'packed'});
//            $('.color-container-3').filterizr({controlsSelector: '.color-controls-3', layout: 'sameHeight'});
//            $('.color-container-4').filterizr({controlsSelector: '.color-controls-4', layout: 'packed'});
//            $('.color-container-5').filterizr({controlsSelector: '.color-controls-5', layout: 'horizontal'});
//            $('.color-container-6').filterizr({controlsSelector: '.color-controls-6', layout: 'vertical'});
//            window.filterizr = f;
//        });

        $('.header-slider').owlCarousel({
            items: 1,
            dots: true
        });
    </script>
@endsection