<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class HelpController
{
    public function index()
    {
        F3::set('content','help.htm');
        echo Template::serve('index.htm');
    }


}