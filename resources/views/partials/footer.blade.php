<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-lg-2 col-sm-3 col-12">
                    <div class="footer-wrapper-logo-social">
                        <div class="footer-wrapper-logo">
                            <a href="index.html">
                                <img src="images/footer-logo.png" alt="footer-logo">
                            </a>
                        </div>
                        <div class="footer-wrapper-social">
                            <div class="wrapper-wrapper-social-block">
                                <a class="social-link" href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="social-link" href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="social-link" href="#">
                                    <i class="fab fa-google-plus"></i>
                                </a>
                                <a class="social-link" href="#">
                                    <i class="fab fa-youtube"></i>
                                </a>
                                <a class="social-link" href="#">
                                    <i class="fab fa-linkedin"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-9">
                    <div class="footer-wrapper-about">
                        <p>Рекламно-производственная компания «РекламаЦентр» известна и результативно работает на
                            рынке рекламно-полиграфических услуг с 2008 года.</p>
                        <p>Особенностью нашей политики есть конкурентные цены на все виды продукции. Мы можем
                            гордиться большим производством, высокотехнологичным оборудованием и с использованием
                            только проверенных и качественных материалов ведущих мировых и украинских
                            производителей.</p>
                        <p>Производство рекламы – это мы делаем ежедневно. И делаем это с полной отдачей и большим
                            удовольствием!</p>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-sm-6">
                    <div class="footer-wrapper-services">
                        <h5>УСЛУГИ</h5>

                        <ul class="footer-services-menu">

                            @foreach($services as $service)
                                <li><a href="{{ url('service-' . $service->slug) }}">{{ $service->title }}</a></li>
                            @endforeach

                            {{--<li><a href="">Дизайн</a></li>--}}
                            {{--<li><a href="">Изготовление и монтаж наружной рекламы</a></li>--}}
                            {{--<li><a href="">Широкоформатная печать</a></li>--}}
                            {{--<li><a href="">Лазерная и фрезерная резка и гравировка</a></li>--}}
                            {{--<li><a href="">Шелкотрафаретная печать</a></li>--}}
                            {{--<li><a href="">Плоттерная порезка</a></li>--}}
                            {{--<li><a href="">Производство пластиковых карт</a></li>--}}
                            {{--<li><a href="">Изготовление сувенирной продукции</a></li>--}}
                            {{--<li><a href="">Брендирование автотранспорта</a></li>--}}
                            {{--<li><a href="">Аренда рекламных плоскостей</a></li>--}}
                            {{--<li><a href="">Реклама на/в транспорте</a></li>--}}
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-lg-3 col-sm-6">
                    <div class="footer-wrapper-production">
                        <h5>ПРОДУКЦИЯ</h5>
                        <ul class="footer-services-menu">

                            @foreach($productions as $production)
                                <li><a href="{{ url('service-' . $production->slug) }}">{{ $production->title }}</a></li>
                            @endforeach

                            {{--<li><a href="">Наружная реклама</a></li>--}}
                            {{--<li><a href="">Интерьерная реклама</a></li>--}}
                            {{--<li><a href="">Полиграфия</a></li>--}}
                            {{--<li><a href="">Рекламно-сувенирная продукция</a></li>--}}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="footer-bottom-sitemap">
                        <p class="footer-bottom-sitemap-sitemap text-red">Карта сайта</p>
                        <div class="footer-bottom-sitemap-copyright">
                            <p>© 2008 -
                                <script>document.write(new Date().getFullYear())</script>
                                Рекламно-производственное агентство «Реклама Центр».
                            </p>
                            <p>Все права защищены. Перепечатка материалов без письменного согласия запрещена!</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <p class="madeBy">
                        Разработано

                        <span class="text-red pad2">
                            @if (rand(1,1000) == 1000)
                                Made with <i class="fas fa-heart"></i>
                                by <a style="color: #ef3a41" href="http://redbox.in.ua/" target="_blank">Redbox</a>
                            @else
                                 LocalService
                            @endif
                        </span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>