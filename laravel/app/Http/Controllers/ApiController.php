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
        }else if($input['username'] != 'admin'){
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
}
