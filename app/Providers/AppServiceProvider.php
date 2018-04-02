<?php

namespace App\Providers;

use App\Page;
use App\Service;
use App\Slider;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        view()->composer('partials.navbar', function ($view){
            $view->with('services', Page::servicesHeader());
            $view->with('productions', Page::productionsHeader());
        });

        view()->composer('partials.slider', function ($view){
            $view->with('sliders', Slider::slider());
        });

        view()->composer('partials.footer', function ($view){
            $view->with('services', Page::servicesHeader());
            $view->with('productions', Page::productionsHeader());
        });

        view()->composer('partials.sidebar', function ($view){
            $view->with('menus', Service::menus());
        });

        view()->composer('partials.categories', function ($view){
            $view->with('categories', Page::categories());
        });
    }
}
