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
Route::get('/rmhdlist','ApiController@getIndexRmhdlist');

// 背中快讯详情页
Route::get('/news/{id}','ApiController@getOneNews');

// 金牌服务
Route::get('/index/service','ApiController@getIndexRmhdlist');

// 北中快讯列表也
Route::get('/news','ApiController@getNews');

// 活动列表页 全部
Route::get('/qbhdlist','ApiController@getQbhdlist');
// 热门活动
Route::get('/rmhdlist','ApiController@getQbhdlist');


// 全部服务
Route::get('/services','ApiController@getIndexRmhdlist');

// 金牌服务
Route::get('/jpservices','ApiController@getIndexRmhdlist');


// 用户
Route::get('/profile','ApiController@getProfile');

Route::get('/profile/orders','ApiController@getProfileOrder');
//Route::get('/profile/activities','ApiController@getProfileActivities');
Route::get('/profile/services','ApiController@getIndexRmhdlist');

// 报名活动
Route::get('/profile/bmhdlist','ApiController@getBmhdlist');

// 获取用户信息
Route::get('/profile/userinfo','ApiController@getProfileUserinfo');
// 修改用户信息
Route::post('/profile/userinfo','ApiController@postProfileUserinfo');

// 活动详情评论
Route::get('/activity/comments','ApiController@getActivityComments');
// 活动须知
Route::get('/activity/hdxz','ApiController@getActivityHdxz');
// 活动详情
Route::get('/activity/{id}','ApiController@getActivity');

// 服务详情评论
Route::get('/service/comments','ApiController@getActivityComments');
// 服务须知
Route::get('/service/hdxz','ApiController@getActivityHdxz');
// 服务详情
Route::get('/service/{id}','ApiController@getActivity');