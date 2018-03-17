<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="x-ua-compatible" content="IE=9"/>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Реклама Центр</title>
    <title>{{ Voyager::setting('title') }}</title>
    <meta name="description" content="{{ Voyager::setting('description') }}">
    <meta name="keywords" content="{{ Voyager::setting('keywords') }}">

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <!-- Favicons -->
    <link rel="SHORTCUT ICON" href="{{ asset('images/favicon.png') }}" type="image/jpg">
    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('images/favicon.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('images/favicon.png') }}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('images/favicon.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('images/favicon.png') }}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('images/favicon.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('images/favicon.png') }}">

    <!-- Nesessary style -->
    @include('partials.css')
    <!-- Nesessary style -->

    @yield('css')
</head>

<body>
@include('partials.navbar')

@yield('content')

@include('partials.footer')
@include('partials.scripts')
@yield('scripts')
</body>
</html>
