<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="{{ url('/') }}" class="simple-text">
                <img src="{{ asset('images/Logo40.png') }}" alt="">
            </a>
        </div>
        <ul class="nav">
            <li class="{{ Route::currentRouteName() == "profile" ? 'active' : '' }}">
                <a href="{{ url('/profile') }}">
                    <i class="pe-7s-user"></i>
                    <p>Личные данные</p>
                </a>
            </li>
            <li class="{{ Route::currentRouteName() == "reklama" ? 'active' : '' }}">
                <a href="{{ url('/reklama') }}">
                    <i class="pe-7s-note2"></i>
                    <p>Для рекламы</p>
                </a>
            </li>
            <li class="{{ Route::currentRouteName() == "knowledge" ? 'active' : '' }}">
                <a href="{{ url('/knowledge') }}">
                    <i class="pe-7s-news-paper"></i>
                    <p>База знаний</p>
                </a>
            </li>
            <li class="{{ Route::currentRouteName() == "business" ? 'active' : '' }}">
                <a href="{{ url('/business') }}">
                    <i class="pe-7s-science"></i>
                    <p>Бизнес</p>
                </a>
            </li>
        </ul>
    </div>
</div>