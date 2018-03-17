<nav class="wrapper-all-menu">
    <div class="container-fluid fluid fixed-top">
        <div class="container">
            <div class="top-menu">
                <div class="top-menu_logo">
                    <a href="{{ url('/') }}">
                        <img src="{{ asset('images/logo-image.png') }}" alt="">
                    </a>
                </div>

                <div class="top-menu_nav">
                    <img src="{{ asset('images/grids.png') }}" alt="">
                    <ul class="manu-list">
                        <p class="mobile-menu">
                            <i class="fas fa-bars mobile-menu-icon"></i>
                        </p>
                        <div class="menu-block hider">
                            <div class="search-box hide-768">
                                <form action="">
                                    <a href="" class="search-link"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <input type="text">
                                </form>
                            </div>

                            <li>
                                <div class="dropdown">
                                    <button class="btn btn-secondary menu-btn dropdown-toggle" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        <img src="{{ asset('images/red-grid-small.png') }}" alt="">
                                        ГЛАВНАЯ
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Наружная реклама</a>
                                        <a class="dropdown-item" href="#">Полиграфия</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="dropdown">
                                    <button class="btn btn-secondary menu-btn dropdown-toggle" type="button"
                                            id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        <img src="{{ asset('images/red-grid-small.png') }}" alt="">
                                        УСЛУГИ
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Наружная реклама</a>
                                        <a class="dropdown-item" href="#">Полиграфия</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="dropdown">
                                    <button class="btn btn-secondary menu-btn dropdown-toggle" type="button"
                                            id="dropdownMenuButton3" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        <img src="{{ asset('images/red-grid-small.png') }}" alt="">
                                        ПРОДУКЦИЯ
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Наружная реклама</a>
                                        <a class="dropdown-item" href="#">Полиграфия</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="dropdown">
                                    <button class="btn btn-secondary menu-btn dropdown-toggle" type="button"
                                            id="dropdownMenuButton4" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        <img src="{{ asset('images/red-grid-small.png') }}" alt="">
                                        КОНТАКТЫ
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Наружная реклама</a>
                                        <a class="dropdown-item" href="#">Полиграфия</a>
                                    </div>
                                </div>
                            </li>
                        </div>
                    </ul>
                    <img src="{{ asset('images/grids.png') }}" class="grids-ico" alt="">
                </div>

                <div class="top-menu_search">
                    <div class="search-box">
                        <a href="{{ url('/search') }}" class="search-link"><i class="fa fa-search" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>