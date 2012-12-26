<?php

require 'Controller.php';

class TodoController extends Controller
{
    public function index()
    {
        F3::set('content','todo.htm');
        echo Template::serve('index.htm');
    }


}