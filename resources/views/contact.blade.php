@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/contact.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    <section class="contact_info">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="wrapper-contact-info">

                        <div class="contact-info-heading">
                            <img src="images/our_works_delimiter.png">
                            <h3>КОНТАКТНАЯ ИНФОРМАЦИЯ</h3>

                            <div class="clearfix"></div>

                            <h5>Рекламное агентство "Реклама Центр"</h5>
                        </div>

                        <div class="clearfix"></div>

                        <div class="wrapper-contacts-page-contact-area">

                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div class="contacts-wrapper-logo">
                                        <img src="images/logo-contacts.png" alt="footer-logo">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12">

                                    <div class="contact-page-wrapper-info">
                                        <div class="contacts-contact-item">
                                            <div class="contact-item-icon">
                                                <i class="fas fa-phone phone"></i>
                                            </div>
                                            <div class="contact-item-icon-info">
                                                <p>
                                                    <a href="tel:+{{ setting('site.phone_1') }}">{{ setting('site.phone_1') }}</a>
                                                </p>
                                                <p>
                                                    <a href="tel:+{{ setting('site.phone_2') }}">{{ setting('site.phone_2') }}</a>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="contacts-contact-item">
                                            <div class="contact-item-icon">
                                                <i class="fas fa-at"></i>
                                            </div>
                                            <div class="contact-item-icon-info">
                                                <p class="contact-item-email">
                                                    <a href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a>
                                                </p>
                                            </div>
                                        </div>

                                        <div class="contacts-contact-item">
                                            <div class="contact-item-icon">
                                                <i class="fas fa-envelope"></i>
                                            </div>
                                            <div class="contact-item-icon-info">
                                                <p>{{ setting('site.address') }}</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="wrapper-contacts-form">

                            <div class="wrapper-form-heading">
                                <img src="images/our_works_delimiter.png">
                                <h3>Схема размещения</h3>

                                <div class="clearfix"></div>

                                <p class="form-sub-text">Заполните форму для связи с нами.</p>
                            </div>

                            <form class="contacts-form" action="{{ action('WelcomeController@contactWithCaptcha') }}"
                                  method="post">
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <input name="name" type="text" class="form-control" placeholder="Ваше имя"
                                           required="required">
                                </div>
                                <div class="form-group">
                                    <input name="email" type="email" class="form-control" placeholder="e-mail"
                                           required="required">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control"
                                           placeholder="Тема сообщения ..." required="required">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" placeholder="Ваше сообщение ..." class="form-control"
                                              rows="3" required="required"></textarea>
                                </div>

                                <div class="form-group">
                                    {!! NoCaptcha::display() !!}
                                </div>

                                <div class="clearfix"></div>

                                @include('errors.listErrors')
                                @include('errors.captcha')

                                <div class="clearfix"></div>

                                <div class="form-buttons">
                                    <div class="row">
                                        <div class="col-md-6"></div>
                                        <div class="col-md-6">
                                            <button type="submit" class="btn btn-submit">ОТПРАВИТЬ</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="wrapper-map">

                        <div class="wrapper-map-heading">
                            <img src="images/our_works_delimiter.png">
                            <h3>Схема размещения</h3>
                        </div>

                        <div class="wrapper-map">
                            <div id="map">

                                @if(setting('site.map'))
                                    {!! setting('site.map') !!}
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.filterizr.min.js"></script>

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
            $('.our_works_switch_panel').addClass("our_works_panel_open");
            $(".our_works_switch_panel_img img").attr("src", "images/our_works_switch_hover.png");
        });

        $('.header-slider').owlCarousel({
            items: 1,
            dots: true,
            autoplay: true
        });
    </script>
@endsection