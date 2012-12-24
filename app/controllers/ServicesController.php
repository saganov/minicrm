<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class ServicesController
{
    public function index()
    {
        F3::set('content','services.htm');
        echo Template::serve('index.htm');
    }


}