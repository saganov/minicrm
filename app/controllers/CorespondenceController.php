<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class CorespondenceController
{
    public function index()
    {
        F3::set('content','corespondence.htm');
        echo Template::serve('index.htm');
    }


}