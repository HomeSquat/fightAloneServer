<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * api接口统一返回格式
 * @param $data  数组类型
 * @param string $code 状态码
 * @return mixed
 */
function apiSuccess($data, $code = "200"){
    $arr['data'] = $data;
    $arr['code'] = $code;
    return json($arr);
}

