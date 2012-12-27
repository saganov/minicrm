<?php

require_once 'AuthController.php';

class TodoController extends AuthController
{
    public function index()
    {
        F3::set('content','todo.htm');
        echo Template::serve('index.htm');
    }


}