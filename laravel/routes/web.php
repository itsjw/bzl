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
