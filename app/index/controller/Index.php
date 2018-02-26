<?php
namespace app\index\controller;
use think\Controller;
use app\index\model\User;

class Index extends Controller
{
    public function index(){
        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) 2018新年快乐</h1><p> ThinkPHP V5.1<br/><span style="font-size:30px">12载初心不改（2006-2018） - 你值得信赖的PHP框架</span></p></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=64890268" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="eab4b9f840753f8e7"></think>';
    }

    public function hello($name = 'ThinkPHP5'){
        return 'hello,' . $name;
    }

    /**
     * @name 获取拼单列表
     * @return mixed
     * @author dongdongjie <zdj@ourstu.com>
     */
    public function faList(){
        $faList = model('Falist')->selectFaList();
        return apiSuccess($faList);
    }

    /**
     * @name 获取拼单详情
     * @return mixed
     * @author dongdongjie <zdj@ourstu.com>
     */
    public function faDetails(){
        $id = input('id');
        $faDetail = model('Falist')->faDetail($id);
        return apiSuccess($faDetail);
    }

    /**
     * @name 发起新的拼单
     * @return mixed
     * @author dongdongjie <zdj@ourstu.com>
     */
    public function addFa(){
        $post = input('post.');
        $id = model('Falist')->addFa($post);
        if($id){
            $newFa = model('Falist')->where('id',$id)->find();
            $newFa['user'] = model('User')->field('name')->where('uid',$newFa['uid'])->find();
            return apiSuccess($newFa);
        }else{
            //TODO apiError
        }
    }

    public function login(){
        $post = input('post.');
        $user = model('User')->where(['name'=>$post['username'],'password'=>$post['userpassword']])->find();
        if($user){
            return apiSuccess($user);
        }else{
            //TODO apiError
        }
    }
}
