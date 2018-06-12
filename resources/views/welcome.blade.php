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

                        <li class="fltr-controls active" data-filter="0">Все фото</li>
                        @foreach($galleries as $gallery)
                            <li class="fltr-controls" data-filter="{{ $gallery->id }}">{{ $gallery->category }}</li>
                        @endforeach

                    </ul>
                </div>

                <div class="col-lg-8 col-md-6 col-sm-12 our_works_right_blok">
                    <div class="row push-down">
                        <div class="filtr-container">

                            @foreach($galleries as $gallery)
                                <div class="col-xs-5 col-sm-6 col-md-6 col-lg-3 filtr-item" data-category="0, {{ $gallery->id }}"
                                     data-sort="{{ $gallery->category }}">

                                    @foreach($gallery->photos as $photo)
                                        <a href="{{ "storage/" . $photo->image }}" data-fancybox>
                                            <img class="img-responsive" src="{{ "storage/" . $photo->image }}">
                                            <img class="our_works_img_hover" src="{{ asset('images/our_works_item_7.png') }}">
                                        </a>
                                    @endforeach

                                </div>
                            @endforeach

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
                            НАМ ДОВЕРЯЮТ <span class="delete-crt"> СОЗДАВАТЬ РЕКЛАМУ </span>
                            С 2008 года
                        </p>
                    </div>
                    <div class="wrapper-text-2 col-md-6">
                        <h2 class="Ourclients"> НАШИ КЛИЕНТЫ </h2>
                    </div>
                </div>
                <div class="row oborot">

                    @foreach($clients as $client)
                        <a href="{{ $client->link }}">
                            <div class="bg-img-clients all-item">
                                <img src="{{ "storage/" . $client->image }}" alt="">
                            </div>
                        </a>
                    @endforeach

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


                @foreach($teams as $person)

                    <div class="description-picture col-md-4">
                        <div class="solo-wrapper-block">
                            <div class="individual-picture">
                                <img class="image-ov" src="{{ asset('storage/' . $person->image) }}">
                                <div class="red-overlay">
                                    <p CLASS="overlay-text">{{ $person->position }}</p>
                                </div>
                            </div>
                            <p class="director">{{ $person->name }}</p>
                            <p class="description">{{ $person->description }}</p>
                            <div class="wrapper-oborot">

                                @if($person->twitter)
                                    <div class="icon-social icon-size-1">
                                        <a href="{{ $person->twitter  }}"><i class="fab fa-twitter"></i></a>
                                    </div>
                                @endif

                                @if($person->facebook)
                                    <div class="icon-social icon-size-2">
                                        <a href="{{ $person->facebook  }}"><i class="fab fa-facebook-f"></i></a>
                                    </div>
                                @endif

                                @if($person->google)
                                    <div class="icon-social icon-size-3">
                                        <a href="{{ $person->google }}"><i class="fab fa-google-plus"></i></a>
                                    </div>
                                @endif

                                @if($person->behance)
                                    <div class="icon-social icon-size-9">
                                        <a href="{{ $person->behance }}"><i class="fab fa-behance"></i></a>
                                    </div>
                                @endif

                                @if($person->pinterest)
                                    <div class="icon-social icon-size-10">
                                        <a href="{{ $person->pinterest }}"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach

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
                            <form action="{{ action('WelcomeController@contact') }}" method="post">
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <input name="name" type="text" class="form-control" placeholder="Ваше имя" required="required">
                                </div>
                                <div class="form-group">
                                    <input name="email" type="email" class="form-control" placeholder="e-mail" required="required">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" placeholder="Ваше сообщение ..." class="form-control" rows="3" required="required"></textarea>
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
                                        <p><a href="tel:+{{ setting('site.phone_1') }}">{{ setting('site.phone_1') }}</a></p>
                                        <p><a href="tel:+{{ setting('site.phone_2') }}">{{ setting('site.phone_2') }}</a></p>
                                    </div>
                                </div>

                                <div class="contacts-contact-item">
                                    <div class="contact-item-icon">
                                        <i class="fas fa-at"></i>
                                    </div>
                                    <div class="contact-item-icon-info">
                                        <p class="contact-item-email"><a href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a></p>
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
                                            <p>{{ setting('site.address') }}</p>
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
            dots: true,
            autoplay: true
        });
    </script>
@endsection