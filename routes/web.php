<?php

//Route::get('/home', 'HomeController@index');
Route::get('/', 'WelcomeController@index');
Route::get('/contact', 'WelcomeController@contacts');
Route::get('/service', 'WelcomeController@service');
Route::get('/search', 'WelcomeController@search');
Route::post('/search-result', 'WelcomeController@serch_result');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});