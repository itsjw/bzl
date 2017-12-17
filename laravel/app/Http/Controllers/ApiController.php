<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use phpDocumentor\Reflection\Types\Integer;

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
                        'image'=>$this->getImage(),
                        'title'=>$this->getLorem(5,15),
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>$this->getImage(),
                        'title'=>$this->getLorem(5,15),
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>$this->getImage(),
                        'title'=>$this->getLorem(5,15),
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>$this->getImage(),
                        'title'=>$this->getLorem(5,15),
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                    [
                        'image'=>$this->getImage(),
                        'title'=>$this->getLorem(5,15),
                        'price'=>mt_rand(1000,20000),
                        'people'=>mt_rand(10,2000),
                        'id'=>mt_rand(1,10)
                    ],
                ]
            ];
        }
    }

    private function getLorem($x,$y)
    {
        $string = 'abcdefghijklmnopqrstuvwxyz';

        $section = '';
        $section_length = mt_rand($x,$y);
        for($i=0;$i<=$section_length-1;$i++){
            $word = '';
            $word_length = mt_rand(4,10);
            for($i = 0;$i<= $word_length-1;$i++){
                $word .= $string{mt_rand(0,25)};
            }
            $section .= $word . '';
        }
        $section .= '.';
        return $section;
    }

    private function getImage()
    {
        $images = [
            'https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=c4d77472f21986185e47e9847aec2e69/7acb0a46f21fbe091caf320761600c338744ad34.jpg',
            'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=d04061e9dbc8a786a12a4c0e5709c9c7/5bafa40f4bfbfbed5e3bf76c72f0f736afc31f47.jpg',
            'https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=acf00ce8ba1bb0519024b528067bda77/0df3d7ca7bcb0a46f7988bf36263f6246a60af45.jpg',
            'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=faf482cc94510fb367197197e933c893/b999a9014c086e0601acf33e08087bf40ad1cbbb.jpg',
            'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=4f5175ce9e0a304e4d22a6fae1c9a7c3/ac4bd11373f08202e8e190f542fbfbedaa641b8c.jpg',
        ];
        return $images[mt_rand(0,4)];
    }
    private function avatar()
    {
        $avatar = [
            'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=8232468,2916696848&fm=27&gp=0.jpg',
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAEsASwDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDpaKKK8k+4CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooqte31rp1s9zeTxwwp1dzgfT3PtQS5KKu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',
            'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=470195148,169764298&fm=27&gp=0.jpg',
            'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2176407858,3353543922&fm=27&gp=0.jpg',
            'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=241891955,548432052&fm=27&gp=0.jpg'
        ];
        return $avatar[mt_rand(0,4)];
    }

    public function getNews(Request $request)
    {
        $input = $request->input();
        if(!isset($input['token'])){
            return [
                'code'=>1,
                "message"=>'token不能为空!',
                'data'=>[]
            ];
        }else{
            return [
                'code'=>0,
                'message'=>'请求成功!',
                'data'=>[
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                    [
                        'id'=>mt_rand(1,10),
                        'title'=>$this->getLorem(5,15),
                        'logo'=>$this->avatar(),
                        'nickname'=>$this->getLorem(1,1),
                        'image'=>$this->getImage(),
                        'clicks'=>mt_rand(0,999),
                        'stars'=>mt_rand(0,100)
                    ],
                ]
            ];
        }
    }
}
