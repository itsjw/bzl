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

/**
 * 用户登录
 */
Route::post('/auth/login','ApiController@login');

// 退出
Route::post('/auth/logout','ApiController@logout');

// 发送验证码
Route::post('/auth/code/send','ApiController@sendCode');

// 验证验证码
Route::post('/auth/code/verify','ApiController@verifyCode');

// 注册接口
Route::post('/auth/register','ApiController@register');

// 首页北中快讯
Route::get('/index/news','ApiController@getIndexNews');

// 热门活动
Route::get('/index/rmhdlist','ApiController@getIndexRmhdlist');


// 热门活动
Route::get('/index/service','ApiController@getIndexRmhdlist');

// 北中快讯列表也
Route::get('/news','ApiController@getNews');
