<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiController extends Controller
{

    public function login(Request $request)
    {
        // username password
        $input = $request->input();

        if(!isset($input['username'])){
            return [
                'status'=>1,
                'message'=>'用户名不能为空!',
                'data'=>[]
            ];
        }else if(!isset($input['password'])){
            return [
                'status'=>1,
                'message'=>'密码不能为空!',
                'data'=>[]
            ];
        }else if($input['username'] != '18888888888'){
            return [
                'status'=>-1,
                'message'=>'用户名不存在!',
                'data'=>[]
            ];
        }else if($input['password'] != 'admin'){
            return [
                'status'=>-2,
                'message'=>'密码错误!',
                'data'=>[]
            ];
        }else if($input['protocol'] != 1){
            return [
                'status'=>1,
                'message'=>'用户没有同意用户协议!',
                'data'=>[]
            ];
        }else{
            return [
                'status'=>0,
                'message'=>'登录成功!',
                'data'=>[
                    'token'=>'admin'
                ]
            ];
        }
    }

    public function logout()
    {
        return [

        ];
    }

    public function sendCode(Request $request)
    {
        $input = $request->input();
        if(!isset($input['phone'])){
            return [
                'status'=>'1',
                'message'=>'phone不能为空!',
                'data'=>[]
            ];
        }
        return [
            'status'=>0,
            'message'=>'短信已发送!',
            'data'=>[]
        ];
    }

    public function verifyCode(Request $request)
    {
        $input = $request->input();
        if(!isset($input['code'])){
            return [
                'status'=>1,
                'message'=>'code参数不存在!',
                'data'=>[]
            ];
        }else if($input['code'] != 123456){
            return [
                'status'=>-4,
                'message'=>'验证码错误!',
                'data'=>[]
            ];
        }
        return [
            'status'=>0,
            'message'=>'请求成功!',
            'data'=>[
                'token'=>'admin'
            ]
        ];
    }

    /**
     * 注册接口
     */
    public function register(Request $request)
    {
        $input = $request->input();
        if(!isset($input['phone'])){
            return [
                'status'=>1,
                'message'=>'手机号码不能为空!',
                'data'=>[]
            ];
        }else if(!isset($input['password'])){
            return [
                'status'=>1,
                'message'=>'密码不能为空!',
                'data'=>[]
            ];
        }else if(!isset($input['password_confirmation'])){
            return [
                'status'=>1,
                'message'=>'确认密码不能为空!',
                'data'=>[]
            ];
        }else if(!isset($input['code'])){
            return [
                'status'=>1,
                'message'=>'验证码不能为空!',
                'data'=>[]
            ];
        }else if($input['password'] != $input['password_confirmation']){
            return [
                'status'=>2,
                'message'=>'两次输入的密码不一致!',
                'data'=>[]
            ];
        }else if($input['code'] != '123456'){
            return [
                'status'=>2,
                'message'=>'验证码错误!',
                'data'=>[]
            ];
        }else{
            return [
                'status'=>0,
                'message'=>'注册成功!',
                'data'=>[]
            ];
        }

    }

    /**
     * 首页背中快讯接口
     */
    public function getIndexNews(Request $request)
    {
        $input = $request->input();
        if(!isset($input['token'])){
            return [
                'status'=>1,
                'message'=>'token不能为空!',
                'data'=>[]
            ];
        }else{
            return [
                'status'=>0,
                'message'=>'获取成功!',
                'data'=>[
                    ['title'=>'美韩举行大规模军演,声称有可能进行斩首心动','id'=>1],
                    ['title'=>'中国驻美大使称:美国军舰入台之时,就是我解放军解放台湾之日','id'=>2]
                ]
            ];
        }
    }

    /**
     * 首页热门活动
     */
    public function getIndexRmhdlist(Request $request)
    {
        $input = $request->input();
        if(!isset($input['token'])){
            return [
                'code'=>1,
                'message'=>'token不能为空!',
                'data'=>''
            ];
        }else{
            return [
                'code'=>0,
                'message'=>'请求成功!',
                'data'=>[
                    [
                        'image'=>'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=4f5175ce9e0a304e4d22a6fae1c9a7c3/ac4bd11373f08202e8e190f542fbfbedaa641b8c.jpg',
                        'title'=>'网际飞侠-情怀餐厅',
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=faf482cc94510fb367197197e933c893/b999a9014c086e0601acf33e08087bf40ad1cbbb.jpg',
                        'title'=>'网际飞侠-印度小孩-印度生活',
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=acf00ce8ba1bb0519024b528067bda77/0df3d7ca7bcb0a46f7988bf36263f6246a60af45.jpg',
                        'title'=>'网际飞侠-新疆伊利市那拉提草原风景区自由跑酷运动',
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=d04061e9dbc8a786a12a4c0e5709c9c7/5bafa40f4bfbfbed5e3bf76c72f0f736afc31f47.jpg',
                        'title'=>'美国亚利桑那州风景区',
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>'https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=c4d77472f21986185e47e9847aec2e69/7acb0a46f21fbe091caf320761600c338744ad34.jpg',
                        'title'=>'清新竹林,沁人心脾',
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                ]
            ];
        }
    }
}
