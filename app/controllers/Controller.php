<?php

abstract class Controller
{
    public function __construct()
    {
        F3::set('AUTH',array('db'=>F3::get('DB'), 'table'=>'logged','id'=>'user_id','pw'=>'token'));
        $auth = Auth::sql(F3::get('SESSION.id'), F3::get('SESSION.token'));
        if (!$auth)
        {
            F3::reroute('/');
        }
    }
}