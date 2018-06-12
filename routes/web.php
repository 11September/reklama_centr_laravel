<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'WelcomeController@index');
Route::get('/contact', 'WelcomeController@contacts');
Route::get('/services', 'WelcomeController@services');
Route::get('/service-{slug}', 'WelcomeController@service');
Route::get('/search', 'WelcomeController@search');
Route::post('/search-result', 'WelcomeController@serch_result');

Route::post('/feedback', 'WelcomeController@contact');
Route::post('/feedbackCaptcha', 'WelcomeController@contactWithCaptcha');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
