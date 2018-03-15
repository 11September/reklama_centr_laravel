<?php

//Route::get('/home', 'HomeController@index');
Route::get('/', 'WelcomeController@index');
Route::get('/contact', 'WelcomeController@contacts');
Route::get('/service', 'WelcomeController@service');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});