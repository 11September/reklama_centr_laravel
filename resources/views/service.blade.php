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
                        <h2>{{ $service->title }}</h2>
                    </div>

                    <div class="service_drunk_content">

                        {!! $service->body !!}

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

                        <div class="interested_in">

                            @foreach($related_services as $related_service)
                                <a href="{{ url('service-' . $related_service->slug) }}" >
                                    <img src="images/service_drunk_menu_point.png">
                                    <img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">
                                    <p>{{ $related_service->title }}</p>
                                </a>
                            @endforeach

                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Печать на пленке</p>--}}
                            {{--</a>--}}
                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Печать на баннере</p>--}}
                            {{--</a>--}}
                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Интерьерная печать</p>--}}
                            {{--</a>--}}
                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Печать бигбордов и больших форматов</p>--}}
                            {{--</a>--}}
                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Печать на холсте</p>--}}
                            {{--</a>--}}
                            {{--<a href="#" >--}}
                                {{--<img src="images/service_drunk_menu_point.png">--}}
                                {{--<img class="service_drunk_hover_img" src="images/service_drunk_menu_point2.png">--}}
                                {{--<p>Печать на сетке</p>--}}
                            {{--</a>--}}
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