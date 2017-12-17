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
        if(!isset('token')){
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
}
