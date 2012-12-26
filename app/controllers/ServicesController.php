<?php

require 'Controller.php';

class ServicesController extends Controller
{
    public function index()
    {
        F3::set('content','services.htm');
        echo Template::serve('index.htm');
    }


}