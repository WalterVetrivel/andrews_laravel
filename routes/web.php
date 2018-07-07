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

Route::get('/', 'MainController@index')->name('home');
Route::get('/resume', 'MainController@resume')->name('resume');
Route::get('/research', 'MainController@research')->name('research');
Route::get('/projects', 'MainController@projects')->name('projects');
Route::get('/publications', 'MainController@publications')->name('publications');