<?php

/*
namespace 'Controller';
use 'F3';
use 'Template';
*/
class SettingsController
{
    public function index()
    {
        F3::set('content','settings.htm');
        echo Template::serve('index.htm');
    }


}