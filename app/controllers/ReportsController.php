<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class ReportsController
{
    public function index()
    {
        F3::set('content','reports.htm');
        echo Template::serve('index.htm');
    }


}