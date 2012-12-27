<?php

require_once 'AuthController.php';

class HelpController extends AuthController
{
    public function index()
    {
        F3::set('content','help.htm');
        echo Template::serve('index.htm');
    }


}