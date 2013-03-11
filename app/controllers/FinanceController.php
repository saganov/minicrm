<?php

require_once 'AuthController.php';

class FinanceController extends AuthController
{
    public function index()
    {
        F3::set('content','finance.htm');
        $view = new Template;
        echo $view->render('index.htm');
    }


}