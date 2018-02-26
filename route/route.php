<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');
//Route::post('addFa', 'index/index/addFa');

return [
    'faList' => 'index/index/faList',
    'faDetails' => 'index/index/faDetails',
    'addFa' => ['index/index/addFa', ['method' => 'post']],
    'login' => ['index/index/login', ['method' => 'post']]
];
