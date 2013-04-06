<?php

require_once 'AuthController.php';

class NewsController extends AuthController
{
    public function index()
    {
        F3::set('content','news.htm');
        $view = new Template;
        echo $view->render('index.htm');
    }


}