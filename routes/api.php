<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// product category
Route::group(['prefix' => 'category'], function(){
    Route::get('', 'CategoryController@index'); //list;
    Route::get('/limit/{id}', 'CategoryController@getLimit'); //list limited;
    Route::post('/add-category', 'CategoryController@create'); //add;
    Route::get('/{id}','CategoryController@show'); //show;
    Route::post('/edit-category/{id}', 'CategoryController@edit'); //edit;
    Route::delete('/delete-category/{id}', 'CategoryController@destroy'); //delete;
});

// product
Route::group(['prefix' => 'product'], function(){
    Route::get('', 'ProductController@index'); //list;
    Route::get('/limit/{limit}', 'ProductController@getLimit'); //list limited;
    Route::get('/relative/{id}','ProductController@list_productscate'); //list product in the same category;
    Route::get('/search','ProductController@search'); //search
    Route::post('/add-product', 'ProductController@create'); //add;
    Route::get('/{id}','ProductController@show'); //show;
    Route::post('/edit-product/{id}', 'ProductController@edit'); //edit;
    Route::delete('/delete-product/{id}', 'ProductController@destroy'); //delete;
});

// news category
Route::group(['prefix' => 'news-category'], function(){
    Route::get('', 'NewsCategoryController@index'); //list;
    Route::post('/add-news-category', 'NewsCategoryController@create'); //add;
    Route::get('/{id}','NewsCategoryController@show'); //show;
    Route::post('/edit-news-category/{id}', 'NewsCategoryController@edit'); //edit;
    Route::delete('/delete-news-category/{id}', 'NewsCategoryController@destroy'); //delete;
});

// news
Route::group(['prefix' => 'news'], function(){
    Route::get('', 'NewsController@index'); //list;
    Route::post('/add-news', 'NewsController@create'); //add;
    Route::get('/{id}', 'NewsController@show'); //show;
    Route::post('/edit-news/{id}', 'NewsController@edit'); //edit;
    Route::delete('/delete-news/{id}', 'NewsController@destroy'); //deltete;
});

// about
Route::group(['prefix' => 'about'], function(){
    Route::get('', 'AboutController@index'); //show;
    Route::post('/edit-about/{id}', 'AboutController@update'); //edit;
});

// contact
Route::group(['prefix' => 'contact'], function(){
    Route::get('', 'ContactController@index'); //show;
    Route::post('/add-contact','ContactController@create'); //add
    Route::delete('/delete-contact/{id}', 'ContactController@destroy'); //deltete;
});