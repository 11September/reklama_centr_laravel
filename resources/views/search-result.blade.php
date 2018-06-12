@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/service.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    <section class="service_drunk">
        <div class="container">
            <div class="row">

                @include('partials.sidebar')

                <div class="col-lg-9 col-md-8 col-sm-12">

                    @include('partials.breadcrumbs')

                    <div class="service_drunk_content">
                        <div class="search">
                            <h3>Поиск: </h3>
                            <input type="text" name="search" placeholder="например, Широкоформатная печать">
                            <button class="search_button btn btn-submit" type="submit">Поиск</button>
                        </div>
                        <img class="service_drunk_view" src="images/service_drunk_view.png">
                        <h3>
                            Широкоформатная печать
                            <br>
                            в г Сумы
                        </h3>
                        <p>
                            Широкоформатная печать в г Сумы – наиболее востребованный и популярный способ получения
                            четких цветных изображений больших форматов. Они выдерживают любые погодные условия, будь то
                            палящее солнце, ветер или град.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>

    <script>
        $('.header-slider').owlCarousel({
            items: 1,
            dots: true,
            autoplay: true
        });
    </script>
@endsection