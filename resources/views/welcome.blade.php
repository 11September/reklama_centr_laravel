@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    @include('partials.categories')

    <section class="our_works">
        <div class="container">

            <div class="row our_works_header">
                <div class="col-lg-7 col-md-5 our_works_header_left">
                    <img src="images/our_works_delimiter.png">
                    <span>Категории</span>
                </div>

                <div class="col-lg-5 col-md-7 col-sm-12  our_works_header_right">
                    <img src="images/our_works_delimiter.png">
                    <h2>Наши работы</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 our_works_switch">
                    <div class="our_works_switch_panel">
                        <span>КАТЕГОРИИ</span>
                        <div class="our_works_switch_panel_img">
                            <img src="images/our_works_switch.png">
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 our_works_left_blok">
                    <ul class="simplefilter our_works_panel">
                        <li class="fltr-controls active" data-filter="1">Дизайн</li>
                        <li class="fltr-controls" data-filter="2">Полиграфия</li>
                        <li class="fltr-controls" data-filter="3">Наружная реклама</li>
                        <li class="fltr-controls" data-filter="4">Брендирование транспорта</li>
                        <li class="fltr-controls" data-filter="5">Сувенирная продукция</li>
                        <li class="fltr-controls" data-filter="6">Печать на футболках/ткани</li>
                    </ul>
                    <div class="link_portfolio">
                        <a href="#">
                            <img src="images/our_works_delimiter.png">
                            <span>Перейти к портфолио</span>
                        </a>
                    </div>
                </div>

                <div class="col-lg-8 col-md-6 col-sm-12 our_works_right_blok">
                    <div class="row push-down">
                        <div class="filtr-container">
                            <div class="col-xs-5 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 5" data-sort="Busy streets">
                                <a href="images/our_works_item_1.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_1.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-5 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 2" data-sort="Luminous night">
                                <a href="images/our_works_item_2.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_2.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 4" data-sort="City wonders">
                                <a href="images/our_works_item_3.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_3.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 3" data-sort="In production">
                                <a href="images/our_works_item_4.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_4.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 4" data-sort="Industrial site">
                                <a href="images/our_works_item_5.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_5.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 4" data-sort="Peaceful lake">
                                <a href="images/our_works_item_6.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_6.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 5" data-sort="City lights">
                                <a href="images/our_works_item_7.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_7.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="1, 6" data-sort="Dreamhouse">
                                <a href="images/our_works_item_8.png" data-fancybox>
                                    <img class="img-responsive" src="images/our_works_item_8.png">
                                    <img class="our_works_img_hover" src="images/our_works_item_7.png">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="Our-Clients">
        <div class="all-bung">
            <div class="container">
                <div class="row">
                    <div class="wrapper-text col-md-6">
                        <p>
                            НАМ ДОВЕРЯЮТ  <span class="delete-crt"> СОЗДАВАТЬ РЕКЛАМУ </span>
                            С 2008 года
                        </p>
                    </div>
                    <div class="wrapper-text-2 col-md-6">
                        <h2 class="Ourclients"> НАШИ КЛИЕНТЫ </h2>
                    </div>
                </div>
                <div class="row oborot">
                    <a href="#"><div class="bg-img-1 all-item"></div></a>
                    <a href="#"><div class="bg-img-2 all-item"></div></a>
                    <a href="#"><div class="bg-img-3 all-item"></div></a>
                    <a href="#"><div class="bg-img-4 all-item"></div></a>
                    <a href="#"><div class="bg-img-5 all-item"></div></a>
                    <a href="#"><div class="bg-img-6 all-item"></div></a>
                    <a href="#"> <div class="bg-img-7 all-item"></div></a>
                    <a href="#"><div class="bg-img-8 all-item"> </div></a>
                    <a href="#"> <div class="bg-img-9 all-item"></div></a>
                    <a href="#"><div class="bg-img-10 all-item"></div></a>
                    <a href="#"><div class="bg-img-11 all-item"></div></a>
                    <a href="#"><div class="bg-img-12 all-item"></div></a>
                </div>
            </div>
        </div>
    </section>

    <section id="Our-Team">
        <div class="container">
            <div class="row">
                <div class="wrapper-text-2 col-md-12">
                    <h2 class="OurTeam"> НАША КОМАНДА</h2>
                </div>
            </div>

            <div class="row">
                <div class="description-picture col-md-4">
                    <div class="solo-wrapper-block">
                        <div class="individual-picture">
                            <img class="image-ov"  src="images/judah.png">
                            <div class="red-overlay">
                                <p CLASS="overlay-text">Директор/основатель</p>
                            </div>
                        </div>
                        <p class="director"> ИМЯ. Директор/основатель. </p>
                        <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at
                            erat hendrerit dictum.
                            Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus
                            diam vitae est.
                            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                        <div class="wrapper-oborot">
                            <div class="icon-social icon-size-1">
                                <a  href="#"><i class="fab fa-twitter"></i></a>
                            </div>
                            <div class="icon-social icon-size-2">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                            </div>
                            <div class="icon-social icon-size-3">
                                <a href="#"><i class="fab fa-google-plus"></i></a>
                            </div>
                            <div class="icon-social icon-size-9">
                                <a href="#"><i class="fab fa-behance"></i></a>
                            </div>

                            <div class="icon-social icon-size-10">
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="description-picture col-md-4">
                    <div class="solo-wrapper-block">
                        <div class="individual-picture">
                            <img src="images/judah.png">
                            <div class="red-overlay">
                                <p CLASS="overlay-text">НАЧАЛЬНИК ПРОИЗВОДСТВА</p>
                            </div>
                        </div>
                        <p class="director">  ИМЯ. Начальник производства. </p>
                        <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum.
                            Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est.
                            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>

                        <div class="wrapper-oborot">
                            <div class="icon-social col-md-2 icon-size-6">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-7">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-8">
                                <a href="#"><i class="fab fa-google-plus"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-9">
                                <a href="#"><i class="fab fa-behance"></i></a>
                            </div>

                            <div class="icon-social col-md-2 icon-size-10">
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="description-picture col-md-4">
                    <div class="solo-wrapper-block">
                        <div class="individual-picture">
                            <img src="images/Layer-17.png">
                            <div class="red-overlay">
                                <p CLASS="overlay-text">Ведущий дизайнер</p>
                            </div>
                        </div>

                        <p class="director"> ИМЯ. Ведущий дизайнер. </p>
                        <p class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at
                            erat hendrerit dictum.
                            Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus
                            diam vitae est.
                            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                        <div class="wrapper-oborot">
                            <div class="icon-social col-md-2 icon-size-6">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-7">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-8">
                                <a href="#"><i class="fab fa-google-plus"></i></a>
                            </div>
                            <div class="icon-social col-md-2 icon-size-9">
                                <a href="#"><i class="fab fa-behance"></i></a>
                            </div>

                            <div class="icon-social col-md-2 icon-size-10">
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-company">
                <h2> О КОМПАНИИ</h2>
            </div>
        </div>
    </section>

    <section class="contact">
        <div class="container">
            <h2>СВЯЖИТЕСЬ С НАМИ</h2>

            <div class="wrapper-contacts-content">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        <div class="wrapper-contacts-form">
                            <form>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Ваше имя">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                           placeholder="e-mail">
                                </div>
                                <div class="form-group">
                                    <textarea placeholder="Ваше сообщение ..." class="form-control" id="exampleTextarea"
                                              rows="3"></textarea>
                                </div>

                                <button type="submit" class="btn btn-submit">ОТПРАВИТЬ</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="wrapper-contacts-contact-area">
                            <div class="contacts-contact-one-block">
                                <h5>КОНТАКТЫ:</h5>

                                <div class="contacts-contact-item">
                                    <div class="contact-item-icon">
                                        <i class="fas fa-phone phone"></i>
                                    </div>
                                    <div class="contact-item-icon-info">
                                        <p><a href="tel:+(050) 239-21-94">(050) 239-21-94</a></p>
                                        <p><a href="tel:+(0542) 659-111">(0542) 659-111</a></p>
                                    </div>
                                </div>

                                <div class="contacts-contact-item">
                                    <div class="contact-item-icon">
                                        <i class="fas fa-at"></i>
                                    </div>
                                    <div class="contact-item-icon-info">
                                        <p class="contact-item-email"><a href="mailto:hello@rc.sumy.uas">hello@rc.sumy.uas</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="contacts-contact-two-block">
                                <div class="contacts-contact-item">
                                    <div class="contacts-contact-item">
                                        <div class="contact-item-icon">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                        <div class="contact-item-icon-info">
                                            <p>ул. Соборная, 29Г</p>
                                            <p>ул. Горького, 17</p>
                                            <p>г. Сумы</p>
                                            <p>Украина</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('scripts')
    <script src="js/jquery.filterizr.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script>
        $(function () {
            var f = $('.filtr-container').filterizr({controlsSelector: '.fltr-controls'});
            $('.color-container-1').filterizr({controlsSelector: '.color-controls-1'});
            $('.color-container-2').filterizr({controlsSelector: '.color-controls-2', layout: 'packed'});
            $('.color-container-3').filterizr({controlsSelector: '.color-controls-3', layout: 'sameHeight'});
            $('.color-container-4').filterizr({controlsSelector: '.color-controls-4', layout: 'packed'});
            $('.color-container-5').filterizr({controlsSelector: '.color-controls-5', layout: 'horizontal'});
            $('.color-container-6').filterizr({controlsSelector: '.color-controls-6', layout: 'vertical'});
            window.filterizr = f;
        });

        $('.our_works_switch_panel').click(function () {
            $('.our_works_panel').css("display", "block");
            $('.our_works_panel').addClass("our_works_panel_open");
            $(".our_works_switch_panel_img img").attr("src", "images/our_works_switch_hover.png");
        });
        $('.our_works_panel').click(function () {
            $('.our_works_panel_open').css("display", "none");
            // $('.our_works_switch_panel').addClass("our_works_panel_open");
            $(".our_works_switch_panel_img img").attr("src", "images/our_works_switch.png");
        });

        $('.header-slider').owlCarousel({
            items: 1,
            dots: true
        });
    </script>
@endsection