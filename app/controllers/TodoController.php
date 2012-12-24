<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class TodoController
{
    public function index()
    {
        F3::set('content','todo.htm');
        echo Template::serve('index.htm');
    }


}