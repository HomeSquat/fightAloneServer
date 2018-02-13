<?php
/**
 * Created by PhpStorm.
 * User: ddj
 * Date: 2018/2/9
 * Time: 9:21
 */

namespace app\index\model;

use think\Model;

class User extends Model{


    // 模型初始化
    protected static function init(){
        //TODO:初始化内容
    }

    public function selectUser(){
        $list = User::select();
        return $list;
    }

}