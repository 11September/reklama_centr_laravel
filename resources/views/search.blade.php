@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/service.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">
@endsection

@section('content')
    @include('partials.slider')
    @include('partials.categories')

    <section class="service_drunk">
        <div class="container">
            <div class="row">

                @include('partials.sidebar')

                <div class="col-lg-9 col-md-8 col-sm-12">

                    @include('partials.breadcrumbs')

                    <div class="service_drunk_content">

                        <div class="search">
                            <h3>Поиск: </h3>

                            <form method="post" action="{{ action('WelcomeController@serch_result') }}">
                                {{ csrf_field() }}

                                <input type="text" name="search" placeholder="например, Широкоформатная печать">

                                <button class="search_button btn btn-submit" type="submit">Поиск</button>
                            </form>
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