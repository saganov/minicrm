<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class FinanceController
{
    public function index()
    {
        F3::set('content','finance.htm');
        echo Template::serve('index.htm');
    }


}