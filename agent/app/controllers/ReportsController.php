<?php

require_once 'AuthController.php';

class ReportsController extends AuthController
{
    public function index()
    {
        F3::set('content','reports.htm');
        $view = new Template;                               
        echo $view->render('index.htm');  
    }


}