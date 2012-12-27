<?php

require_once 'AuthController.php';

class ServicesController extends AuthController
{
    public function index()
    {
        F3::set('content','services.htm');
        echo Template::serve('index.htm');
    }


}