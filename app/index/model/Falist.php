<?php
/**
 * Created by PhpStorm.
 * User: ddj
 * Date: 2018/2/10
 * Time: 17:04
 */

namespace app\index\model;


use think\Model;

class Falist extends Model
{
    // 设置当前模型对应的完整数据表名称
//    protected $table = 'falist';
    // 模型初始化
    protected static function init(){
        //TODO:初始化内容
    }

    public function selectFaList(){
        $list = Falist::select();
        foreach ($list as &$li){
            $li['user'] = model('User')->field('name')->where('uid',$li['uid'])->find();
        }
        return $list;
    }

    /**
     * @name 获取拼单详情
     * @param $id 拼单号
     * @return array|null|\PDOStatement|string|Model
     */
    public function faDetail($id){
        $list = Falist::where('id',$id)->find();
        //根据uid查找拼单发起人名字
        $list['initiator'] = model('User')->where('uid',$list['uid'])->value('name');
        //查找出参与这个拼单的用户信息
        $list['participant'] = model('Participant')->where('falist_id',$id)->select();
        //根据uid查找用户昵称
        foreach($list['participant'] as &$fadet){
            $fadet['is_payment'] = $fadet['is_payment'] == 1 ? "已付款": "未付款";
            $fadet['name'] = model('User')->where('uid',$fadet['uid'])->value('name');
        }

        return $list;

    }
}