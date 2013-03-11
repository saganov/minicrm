<?php

require_once 'AuthController.php';

class SettingsController extends AuthController
{
    public function index()
    {
        F3::set('content','settings.htm');
        $view = new Template;                               
        echo $view->render('index.htm');  
    }


}