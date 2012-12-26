<?php

require 'Controller.php';

class NewsController extends Controller
{
    public function index()
    {
        F3::set('content','news.htm');
        echo Template::serve('index.htm');
    }


}