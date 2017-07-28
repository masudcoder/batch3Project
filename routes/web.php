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



Auth::routes();

Route::get('/', 'PageController@index');
Route::get('index', 'PageController@index');
Route::get('/products_details/{id}', 'PageController@productDetails');//new route make
Route::get('/home', 'PageController@index');

Route::get('/addToCart/{id}', 'CartController@addToCart');//new route make
Route::post('/addToCart', 'CartController@postAddToCart');//new route make
Route::get('/mycart', 'CartController@mycart');//new route make
Route::post('/update-cart', 'CartController@updateCart');//new route make
Route::get('/checkout', 'CartController@checkout');//new route make

Route::get('/getUpazilas/{district_id}', 'CartController@getUpazilas');


Route::get('/man', 'PageController@man');//new route make Woman
Route::get('/Woman', 'PageController@woman');
Route::post('/insert', 'PageController@insert');
Route::get('/manage-product', 'Admin\ManageProductController@index');
Route::get('/manage-product/create', 'Admin\ManageProductController@create');
Route::post('/manage-product/store', 'Admin\ManageProductController@store');
Route::get('/product/edit/{id}', 'Admin\ManageProductController@edit');
Route::get('/product/delete/{abcd}', 'Admin\ManageProductController@delete');
Route::post('/manage-product/update', 'Admin\ManageProductController@update');




Route::get('/manage-product/import-product', 'Admin\ManageProductController@importProduct');

Route::post('/manage-product/storeimportedProduct', 'Admin\ManageProductController@storeimportedProduct');





