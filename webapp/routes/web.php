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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
// Keycloak routes - To be used in staging or production
if (env('KEYCLOAK_ENABLED')) {
    Route::get('login', 'Auth\LoginController@redirectToProvider')->name('login');
    Route::get('login/callback', 'Auth\LoginController@handleProviderCallback');
}

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/settings', 'SettingsController@index')->name('settings');
