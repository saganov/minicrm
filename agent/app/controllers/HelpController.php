<?php

require_once 'AuthController.php';

class HelpController extends AuthController
{
    public function index()
    {
        F3::set('content','help.htm');
        $view = new Template;
        echo $view->render('index.htm');
    }


}